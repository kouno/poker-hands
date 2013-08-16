require 'spec_helper'

describe PokerHands::Card do
  subject { PokerHands::Card.new }

  it { should respond_to(:value) }
  it { should respond_to(:suit) }

  it "defines a constant for cards values" do
    expect(PokerHands::Card).to have_constant(:VALUES)
  end

  it "defines a constant for cards suits" do
    expect(PokerHands::Card).to have_constant(:SUITS)
  end

  it "can be compared to another card" do
    expect(PokerHands::Card.new('2', 'H')).to be < PokerHands::Card.new('3', 'H')
    expect(PokerHands::Card.new('2', 'C')).to be < PokerHands::Card.new('3', 'H')
    expect(PokerHands::Card.new('Q', 'C')).to be > PokerHands::Card.new('3', 'H')
    expect(PokerHands::Card.new('A', 'C')).to be == PokerHands::Card.new('A', 'H')
  end
end
