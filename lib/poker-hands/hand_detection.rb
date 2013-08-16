module PokerHands
  module HandDetection
    def type
      if flush?
        :flush
      elsif straight?
        :straight
      elsif four_of_a_kind?
        :four_of_a_kind
      elsif three_of_a_kind?
        :three_of_a_kind
      elsif two_pair?
        :two_pair
      elsif pair?
        :pair
      end
    end

    def flush?
      @cards.map(&:suit).uniq.size == 1
    end

    def straight?
      @cards.sort!
      i = PokerHands::Card::VALUES.index(@cards.first.value)
      PokerHands::Card::VALUES[i + 4] == @cards.last.value
    end

    def four_of_a_kind?
      has_card_x_times(4)
    end

    def three_of_a_kind?
      has_card_x_times(3)
    end

    def two_pair?
      card_forming_pair = 0

      @cards.each do |card|
        found_cards = @cards.select do |second_card|
          card == second_card && card.suit != second_card.suit
        end

        card_forming_pair = card_forming_pair + 1 if found_cards.size == 1
      end

      card_forming_pair == 4
    end

    def pair?
      has_card_x_times(2)
    end

    def has_card_x_times(n)
      @cards.each do |card|
        found_cards = @cards.select do |second_card|
          card == second_card && card.suit != second_card.suit
        end

        return true if found_cards.size == n - 1
      end

      false
    end
  end
end
