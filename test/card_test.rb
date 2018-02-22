require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require 'pry'

class CardTest < Minitest::Test
  def setup
    @card = Card.new("What is the capital of Alaska?", "Juneau")
  end

  def test_it_exists
    assert_instance_of Card, @card
  end

  def test_you_can_call_question
    assert_equal "What is the capital of Alaska?", @card.question
  end

  def test_you_can_call_answer
    assert_equal "Juneau", @card.answer
  end
end
