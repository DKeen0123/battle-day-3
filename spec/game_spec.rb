require 'game'

describe Game do
  subject(:g) { described_class.new }
  let(:player2) { double 'player2', hp: 100 }

  it "reduces a player's HP by 10" do
    allow(player2).to receive(:hp=)
    allow(player2).to receive(:receive_damage).and_return(player2.hp -= 10)
    expect{ g.attack(player2) }.to change { player2.hp }.by(-10)
  end
end
