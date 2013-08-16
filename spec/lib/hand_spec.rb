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
      subject << PokerHands::Card.new('T', 'H')
      subject << PokerHands::Card.new('A', 'H')
      expect(subject.type).to eq(:pair)
    end

    it "detects two pair" do
      subject << PokerHands::Card.new('8', 'H')
      subject << PokerHands::Card.new('8', 'C')
      subject << PokerHands::Card.new('7', 'H')
      subject << PokerHands::Card.new('7', 'C')
      subject << PokerHands::Card.new('A', 'H')
      expect(subject.type).to eq(:two_pair)
    end

    it "detects three of a kind" do
      subject << PokerHands::Card.new('8', 'H')
      subject << PokerHands::Card.new('8', 'C')
      subject << PokerHands::Card.new('8', 'D')
      subject << PokerHands::Card.new('7', 'C')
      subject << PokerHands::Card.new('A', 'H')
      expect(subject.type).to eq(:three_of_a_kind)
    end

    it "detects four of a kind" do
      subject << PokerHands::Card.new('8', 'H')
      subject << PokerHands::Card.new('8', 'C')
      subject << PokerHands::Card.new('8', 'D')
      subject << PokerHands::Card.new('8', 'S')
      subject << PokerHands::Card.new('A', 'H')
      expect(subject.type).to eq(:four_of_a_kind)
    end

    it "detects straight" do
      subject << PokerHands::Card.new('8', 'H')
      subject << PokerHands::Card.new('9', 'C')
      subject << PokerHands::Card.new('T', 'D')
      subject << PokerHands::Card.new('J', 'S')
      subject << PokerHands::Card.new('Q', 'H')
      expect(subject.type).to eq(:straight)
    end
  end
end
