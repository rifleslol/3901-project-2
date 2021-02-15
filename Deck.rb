require_relative 'SetCard'


class Deck
  def initialize # Initialize a deck object with its possible attributes
    @Deck = []
    @shapes = ["diamond ", "squiggle", "  oval  "]
    @shadings = ["  solid ", " stripe ", "  open  "]
    @colors = ["   red  ", "  green ", "  blue  "]
    @numbers = ["   one  ", "   two  ", "  three "]

    @shapes.each do |shape| # Iterate each of the attributes and call for a card for each
      @shadings.each do |shade|
        @colors.each do |color|
          @numbers.each do |number|
              new_card = SetCard.new(shape, shade, color, number)
              temp_card = new_card.make_card()
              @Deck << temp_card # by the time this is done, we have all 81 unique cards in the deck!

            end
          end
        end
      end
    end
  def print_deck
      print @Deck
      print @Deck.length
  end
  def count
    @Deck.count
  end
  def delete_at(index)
    @Deck.delete_at(index)
  end
end
