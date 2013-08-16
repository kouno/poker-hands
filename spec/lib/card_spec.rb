require 'spec_helper'

describe PokerHands::Card do
  subject { PokerHands::Card.new }

  it { should respond_to(:value) }
  it { should respond_to(:suit) }
end
