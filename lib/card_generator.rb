require './lib/card'
require 'pry'

class CardGenerator
  attr_reader :cards, :data

  def initialize(filename)
    @cards = []
    @data = []
    @filename = filename
  end

  def parse_data
    File.readlines(@filename).each do |line|
      data << line.chomp.split(',')
   end
  end

  def generate
    parse_data
    data.each do |question, answer|
     cards << Card.new(question, answer)
   end
  end
end
