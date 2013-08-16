module PokerHands
  class Deck
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
  end
end
