require 'minitest/autorun'
require 'minitest/pride'
require './lib/flashcards'
require './lib/guess'
require './lib/deck'
require './lib/round'
require 'pry'

class RoundTest < Minitest::Test
  def setup
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    @card_2 = Card.new("Approximately how many miles are in one
                       astronomical unit?", "93,000,000")
    @guess_1 = Guess.new("Juneau", @card_1)
    @guess_2 = Guess.new("93,000,000", @card_2)
    @deck = Deck.new([@card_1, @card_2])
    @round = Round.new(@deck)
  end

  def test_it_exists
    assert_instance_of Round, @round
  end

  def test_it_can_work_with_deck
    assert_equal @deck, @round.deck
  end

  def test_guesses_method
    assert_equal [], @round.guesses
  end

  def test_for_current_card
    assert_equal @card_1, @round.current_card
  end

  def test_if_current_card_is_two
    @round.record_guess("Juneau")
    assert_equal @card_2, @round.current_card
  end

  def test_record_guess
    actual = @round.record_guess("Juneau")
    assert_equal @guess_1.response, actual.response
    assert_equal @guess_1.card, actual.card
  end

  def test_it_can_record_two_guesses
    @round.record_guess("Juneau")
    assert_equal @guess_2.response, @round.record_guess("93,000,000").response
  end

  def test_count_guesses
    x = rand(0..100)
    x.times do |count|
        @round.record_guess(count)
    end
    assert_equal x, @round.guesses.count
  end

  def test_first_guess_is_correct
    @round.record_guess("Juneau")
    assert_equal "Correct!", @round.guesses.first.feedback
  end

  def test_number_of_correct_answers
    @round.record_guess("Juneau")
    @round.record_guess("2")
    assert_equal 1, @round.number_correct
  end

  def test_it_can_give_percent_correct
    @round.record_guess("Juneau")
    @round.record_guess("2,000")
    assert_equal 50, @round.percent_correct
  end
end
