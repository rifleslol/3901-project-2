class SetCard
    attr_reader :card_shape, :card_shade, :card_color, :card_number
  
  def initialize(*properties)
    @card_shape = properties[0]
    @card_shade = properties[1]
    @card_color = properties[2]
    @card_number = properties[3]
  end

  def make_card
    card = [@card_shape, @card_shade, @card_color, @card_number]
  end

end
