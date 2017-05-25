require 'player'
describe Player do
  subject(:player) { described_class.new('Cuddles') }
  it 'should return the players name' do
    expect(player.name).to eq 'Cuddles'
  end
end
