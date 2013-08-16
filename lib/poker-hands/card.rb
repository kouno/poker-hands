module PokerHands
  class Card
    include Comparable

    VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', 'T', 'J', 'Q', 'K', 'A']
    SUITS  = ['C', 'D', 'H', 'S']

    attr_accessor :value, :suit

    def initialize(value = nil, suit = nil)
      @value = value if VALUES.include?(value)
      @suit  = suit  if SUITS.include?(suit)
    end

    def <=>(anOther)
      VALUES.index(@value) <=> VALUES.index(anOther.value)
    end

    def inspect
      "Card (#{@value}, #{suit})"
    end
  end
end
