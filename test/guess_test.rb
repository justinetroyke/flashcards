require 'minitest/autorun'
require 'minitest/pride'
require './lib/flashcards'
require './lib/guess'
require 'pry'

class GuessTest < Minitest::Test
  def setup
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    @guess_1 = Guess.new("Juneau", @card_1)
    @card_2 = Card.new("Which planet is closest to the sun?", "Mercury")
    @guess_2 = Guess.new("Saturn", @card_2)
  end
  def test_it_exists
    assert_instance_of Guess, @guess_1
  end
  def test_response
    assert_equal "Juneau", @guess_1.response
    assert_equal "Saturn", @guess_2.response
  end

  def test_card_method_with_guess
    assert @card_1, @guess_1.card
  end

  def test_correct_response
    assert @guess_1.correct?
    refute @guess_2.correct?
  end

  def test_it_provides_correct_feedback
    assert_equal "Correct!", @guess_1.feedback
    assert_equal "Incorrect.", @guess_2.feedback
  end
end
