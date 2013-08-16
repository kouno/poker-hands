require 'spec_helper'

describe PokerHands::Deck do
  subject { PokerHands::Deck.new }

  it "contains 52 cards" do
    expect(subject.size).to eq(52)
  end

  it "uses shuffle to randomize the cards order" do
    expect(subject.cards).to receive(:shuffle)
    subject.shuffle
  end

  it "draws a card" do
    card = subject.draw
    expect(card).to be_a PokerHands::Card
    expect(subject.size).to eq(51)
  end
end
