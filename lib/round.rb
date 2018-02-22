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
    @guesses.count(&:correct?)
  end

  def percent_correct
    ((number_correct.to_f / @guesses.count) * 100).to_i
  end

  def start
    intro
    card_loop
    results
  end

  def intro
    p "Welcome! You're playing with #{@deck.count} cards"
    p "-------------------------------------------------"
  end

  def card_loop
    @deck.cards.each.with_index(1) do |card, index|
      p "This is card number #{index} out of #{@deck.count}."
      p "Question: #{card.question}"
      response = gets.strip
      guess = record_guess(response)
      sleep 1
      p guess.feedback
      sleep 2
    end
  end

  def results
    p "****** Game over! ******"
    p "You had #{number_correct} correct guesses out of #{@deck.count} for a score of #{percent_correct}%."
  end
end
