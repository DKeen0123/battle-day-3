require 'game'

describe Game do
  subject(:g) { described_class.new }
  let(:player2) { double 'player2' }

  it "damages the player" do
    expect(player2).to receive(:receive_damage)
    g.attack(player2)
  end
end
