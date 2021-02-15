require_relative 'SetCard'


class Deck
  def initialize
    @Deck = []
    @shapes = ["diamond ", "squiggle", "  oval  "]
    @shadings = ["  solid ", " stripe ", "  open  "]
    @colors = ["   red  ", "  green ", "  blue  "]
    @numbers = ["   one  ", "   two  ", "  three "]

    @shapes.each do |shape|
      @shadings.each do |shade|
        @colors.each do |color|
          @numbers.each do |number|
              new_card = SetCard.new(shape, shade, color, number)
              temp_card = new_card.make_card()
              @Deck << temp_card

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
