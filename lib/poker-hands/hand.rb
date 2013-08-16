module PokerHands
  class Hand
    attr_accessor :cards

    def initialize
      @cards = []
      @deck  = PokerHands::Deck.new
    end

    def empty?
      @cards.empty?
    end

    def draw
      5.times do
        @cards << @deck.draw
      end
    end

    def <<(card)
      @cards << card
    end

    def size
      @cards.size
    end
  end
end
