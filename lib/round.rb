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
    binding.pry
  end
  # 
  # def number_correct
  #   if @guesse.correct?
  #     number_correct += 1
  #   end
  #       binding.pry
  # end
end
