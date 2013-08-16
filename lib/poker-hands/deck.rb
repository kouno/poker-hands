module PokerHands
  class Deck
    attr_accessor :cards

    def initialize
      @cards = []
      build_deck
    end

    def build_deck
      PokerHands::Card::VALUES.each do |value|
        PokerHands::Card::SUITS.each do |suit|
          @cards << PokerHands::Card.new(value, suit)
        end
      end
    end

    def size
      @cards.size
    end

    def shuffle
      @cards.shuffle
    end
  end
end
