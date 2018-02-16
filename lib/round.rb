class Round
  attr_reader :deck,
              :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
  end
  def current_card
    @deck.cards[guesses.length]
    # binding.pry
  end
  # def record_guess(response)
  #   @guesses << Guess.new(response, current_card)
  #   @guesses.last
  # end
end
