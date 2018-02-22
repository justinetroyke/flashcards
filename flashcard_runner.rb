require './lib/round'
require './lib/deck'
require './lib/guess'
require './lib/card'
require './lib/card_generator'
#
filename =  'cards.txt'
cards = CardGenerator.new(filename).cards
# @card_1 = Card.new("What is the capital of Alaska?", "Juneau")
# @card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
# @card_3 = Card.new("How many teams are in MLB?", "30")

@deck = Deck.new([cards])
@round = Round.new(@deck)

@round.start
