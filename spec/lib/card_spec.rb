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
end
