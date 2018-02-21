require './lib/guess'
require './lib/deck'
require './lib/round'
require './lib/flashcards'
require 'pry'

@card_a = Card.new("How many teams are in MLB?", "30")
@card_b = Card.new("Who is the 25th president of the United Sates?", "William McKinley")
@card_c = Card.new("What is the most common household pet in the United States?", "Fish")
@card_d = Card.new("In waht year was Colorado founded?", "1876")
@deck_a = Deck.new(@cards)
@round_1 = Round.new(@deck_a)

def start
  "Welcome! You're playing with 4 cards"
  "-------------------------------------------------"
  "This is card number #{} out of 4."

end


# cards = CardGenerator.new(filename).cards
# @card_1 = Card.new("What is the capital of Alaska?", "Juneau")
# @card_2 = Card.new("Approximately how many miles are in one
#                    astronomical unit?", "93,000,000")
# @guess_1 = Guess.new("Juneau", @card_1)
# @guess_2 = Guess.new("93,000,000", @card_2)
# @deck = Deck.new(@cards)
# @round = Round.new(@deck)
#
# @round.start
