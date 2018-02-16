class Round
  attr_reader :deck,
              :guesses,
              :number_correct

  def initialize(deck)
    @deck = deck
    @guesses = []
    @card_count = 0
    @number_correct = 0
  end

  def current_card
    @deck.cards[guesses.length]
  end

  def record_guess(guess)
    result = Guess.new(guess, current_card)
    @guesses << result
    result
  end

  def number_correct
  end
end
