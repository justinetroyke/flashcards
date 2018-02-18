class Round
  attr_reader :deck,
              :guesses

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
    correct_guesses = @guesses.select do |guess|
    guess.correct?
    end
    correct_guesses.length
  end

  def percent_correct
    (@number_correct / @guesses.count) * 100
  end
end
