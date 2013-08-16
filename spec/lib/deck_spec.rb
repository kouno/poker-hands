require 'spec_helper'

describe PokerHands::Deck do
  subject { PokerHands::Deck.new }

  it "contains 52 cards" do
    expect(subject.size).to eq(52)
  end
end
