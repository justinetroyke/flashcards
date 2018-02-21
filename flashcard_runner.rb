require './lib/guess'
require './lib/deck'
require './lib/round'
require './lib/flashcards'
require 'pry'

@card_a = Card.new("How many teams are in MLB?", "30")
@card_b = Card.new("Who is the 25th president of the United Sates?", "William McKinley")
@card_c = Card.new("What is the most popular household pet in the world?", "Fish")
@card_d = Card.new("In what year was Colorado founded?", "1876")
@deck = Deck.new([@card_a, @card_b])
@round_1 = Round.new(@deck)

@round_1.start
