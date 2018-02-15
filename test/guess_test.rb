require 'minitest/autorun'
require 'minitest/pride'
require './lib/flashcards'
require './lib/guess'
require 'pry'

class GuessTest < Minitest::Test

  def test_it_exists
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    guess_1 = Guess.new("Juneau", card_1)

    assert_instance_of Guess, guess_1
  end

  def test_response
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    guess_1 = Guess.new("Juneau", card_1)
    card_2 = Card.new("Which planet is closest to the sun?", "Mercury")
    guess_2 = Guess.new("Saturn", card_2)

    assert_equal "Juneau", guess_1.response
    assert_equal "Saturn", guess_2.response
  end

  def test_correct_response
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    guess_1 = Guess.new("Juneau", card_1)
    card_2 = Card.new("Which planet is closest to the sun?", "Mercury")
    guess_2 = Guess.new("Saturn", card_2)

    assert guess_1.correct?
    refute guess_2.correct?
  end

  def test_it_provides_correct_feedback
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    guess_1 = Guess.new("Juneau", card_1)
    card_2 = Card.new("Which planet is closest to the sun?", "Mercury")
    guess_2 = Guess.new("Saturn", card_2)

    assert_equal "Correct!", guess_1.feedback
    assert_equal "You Suck!", guess_2.feedback
  end

end
