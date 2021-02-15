class SetCard
    attr_reader :card_shape, :card_shade, :card_color, :card_number
  # initialize the card object, ^ this didn't work as expected, I need more time to figure it out
  def initialize(*properties)
    @card_shape = properties[0]
    @card_shade = properties[1]
    @card_color = properties[2]
    @card_number = properties[3]
  end

  def make_card # Make the card object here with the given properties from the deck.
    card = [@card_shape, @card_shade, @card_color, @card_number]
  end

end
