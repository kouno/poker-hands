require 'spec_helper'

describe PokerHands::Hand do
  subject { PokerHands::Hand.new }

  it { should respond_to(:cards) }

  it "is empty at the beginning" do
    expect(subject).to be_empty
  end

  context "cards have been drawn" do
    before(:each) do
      subject.draw
    end

    it "contains 5 cards" do
      expect(subject.size).to eq(5)
    end
  end

  context "hands detection" do
    it "detects a pair" do
      subject << PokerHands::Card.new('8', 'H')
      subject << PokerHands::Card.new('8', 'C')
      subject << PokerHands::Card.new('7', 'H')
      subject << PokerHands::Card.new('10', 'H')
      subject << PokerHands::Card.new('A', 'H')
      expect(subject.type).to eq(:pair)
    end
  end
end
