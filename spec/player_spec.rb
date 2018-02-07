require 'player'

describe Player do

  subject(:player) { described_class.new("Simon")}

  describe "initialize" do
    it 'returns a name' do
      expect(player.name).to eq 'Simon'
    end

    it "initializes a new player with 100 HP" do
      expect(player.hp).to eq 100
    end
  end

  describe "#attack" do
    it "reduces a player's HP by 10" do
      player2 = Player.new(:pikachu)
      expect{ player.attack(player2) }.to change { player2.hp }.by(-10)
    end
  end


end
