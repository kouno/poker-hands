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
end
