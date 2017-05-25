require 'player'
describe Player do
  subject(:player) { described_class.new('Cuddles') }
  subject(:player2) { described_class.new('Godzilla') }

  describe '#name' do
    it 'should return the players name' do
      expect(player.name).to eq 'Cuddles'
    end
  end

  describe'#hitpoints' do
    it 'should return the players hitpoints' do
      expect(player.hp).to eq 100
    end
  end

  describe "#attack" do
    it 'should attack the other player' do
      expect { player.attack(player2) }.to change { player2.hp }. by -(10)
    end
  end
end
