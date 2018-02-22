require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/guess'
require './lib/deck'
require 'pry'

class DeckTest < Minitest::Test
  def setup
    @deck = Deck.new([1, 2, 3])
  end

  def test_it_exists
    assert_instance_of Deck, @deck
  end

  def test_deck_has_cards
    assert_equal [1, 2, 3], @deck.cards
  end

  def test_count_cards
    assert_equal 3, @deck.count
  end
end
