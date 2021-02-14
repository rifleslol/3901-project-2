class SetCard
  include Comparable

  CARD_ATTRIBUTES = {
    :number => ["one", "two", "three"]
    :color => {"red", "green", "blue"}
    :shade => {"solid", "stripe", "open"}
    :shape => {"diamond", "squiggle", "oval"}
  }

def self.attribute_keys
  CARD_ATTRIBUTES.keys
end

def self.number
  CARD_ATTRIBUTES[:number]
end

def self.color
  CARD_ATTRIBUTES[:color]
end

def self.shade
  CARD_ATTRIBUTES[:shade]
end

def self.shape
  CARD_ATTRIBUTES[:shape]
end

def self.attributes_setter (shapeIn, shadeIn, colorIn, numberIn)
  {
  shape: shapeIn, shade: shadeIn, color: colorIn, number: numberIn
  }
end

def self.create_card()
  {
    Card.new(attributes_setter(shapeIn, shadeIn, colorIn, numberIn))
  }
