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
    assert @guess_1, @round.record_guess("Juneau")
    assert_equal @card_2, @round.current_card
  end
  def test_record_guess
    skip
    assert @guess_1, @round.record_guess("Juneau")
    assert @guess_2, @round.record_guess("2")
  end
end
