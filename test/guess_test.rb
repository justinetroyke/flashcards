require 'minitest/autorun'
require 'minitest/pride'
require './lib/flashcards'
require './lib/guess'
require 'pry'

class Guesstest < Minitest::Test

  def test_it_exists
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)

    assert_instance_of Guess, guess
  end

  def test_response
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    card_2 = Card.new("Which planet is closest to the sun?", "Mercury")
    guess_2 = Guess.new("Saturn", card)

    assert_equal "Juneau", guess.response
    assert_equal "Saturn", guess_2.response
  end

  def test_correct_response
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    card_2 = Card.new("Which planet is closest to the sun?", "Mercury")
    guess_2 = Guess.new("Saturn", card)

    assert guess.correct?
    refute guess_2.correct?
  end

  def test_it_provides_correct_feedback
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)

    assert_equal "Correct!", guess.feedback
  end

end
