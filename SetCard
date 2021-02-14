class SetCard
  include Comparable

  CARD_ATTRIBUTES = {
    :number => ["1", "2", "3"]
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

def self.random_attributes (numberSamp = number.sample, colorSamp = color.sample, shadeSamp = shade.sample, shapeSamp = shape.sample)
  {
  number: numbersamp, color: colorSamp, shade: shadeSamp, shape: shapeSamp
  }
end
