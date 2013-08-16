require 'spec_helper'

describe "Hands comparison" do
  context "First hand is a pair" do
    let(:first_hand) { PokerHands::Hand.new }
    let(:second_hand) { PokerHands::Hand.new }

    before(:each) do
      first_hand << PokerHands::Card.new('8', 'H')
      first_hand << PokerHands::Card.new('8', 'C')
      first_hand << PokerHands::Card.new('7', 'H')
      first_hand << PokerHands::Card.new('T', 'H')
      first_hand << PokerHands::Card.new('A', 'H')
    end


    it "wins against a lower pair" do
      second_hand << PokerHands::Card.new('6', 'H')
      second_hand << PokerHands::Card.new('6', 'C')
      second_hand << PokerHands::Card.new('7', 'H')
      second_hand << PokerHands::Card.new('T', 'H')
      second_hand << PokerHands::Card.new('A', 'H')
      expect(first_hand).to be > second_hand
    end
  end
end
