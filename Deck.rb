require_relative 'SetCard'


class Deck
  def initialize
    @shapes = ["diamond", "squiggle", "oval"]
    @shadings = ["solid", "stripe", "open"]
    @colors = ["red", "green", "blue"]
    @numbers = ["one", "two", "three"]

    def self.create_deck
      @shapes map do |shape|
        @shadings.map do |shade|
          @colors.map do |color|
            @numbers.map do |number|
              {
                SetCard.new(shape, shade, color, number)
              }
            end
          end
        end
      end
    end

    SetDeck = create_deck

    def triples
      SetDeck.combination(3).to_a
    end
