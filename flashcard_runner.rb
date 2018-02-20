require './lib/guess'
require './lib/deck'
require './lib/round'
require './lib/flashcards'
require 'pry'

@deck = Deck.new(@cards)
@round = Round.new(@deck)

@round.start 
