require 'player'

describe Player do
  subject(:player) { described_class.new('name1') }
  it 'Player will take damage' do
    expect(player.take_damage).to eq(90)
  end
end
