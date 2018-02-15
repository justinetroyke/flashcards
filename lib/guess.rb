class Guess

  attr_reader :response

  def initialize(response, card)
    @response = response
    @card = card
  end

  def correct?
    response == @card.answer
  end

  def feedback
    response == @card.answer
      p "Correct!"
  end
end
