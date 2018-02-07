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

  describe "#receive_damage" do
    it "reduces a player's HP by 10" do
      expect{player.receive_damage}.to change{ player.hp }.by(-10)
    end
  end

end
