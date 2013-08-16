module PokerHands
  module HandDetection
    def type
      if pair?
        :pair
      end
    end

    def pair?
      @cards.each do |card|
        found_cards = @cards.select do |second_card|
          card == second_card && card.suit != second_card.suit
        end

        return true if found_cards.size == 1
      end

      false
    end
  end
end
