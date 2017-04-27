require 'game'


describe Game do
  let(:player) { double :player, take_damage: 90 }
  subject(:game) { described_class.new("player1", player) }
  it 'attack method works on game class' do
    expect(game.attack).to eq(90)
  end

  it 'player becomes an instance variable' do
    game = Game.new('player1','player2')
    expect(game.player1).to eq 'player1'
    expect(game.player2).to eq 'player2'
  end

  it 'players switch turns' do
    game = Game.new('player1','player2')
    game.switch_turns
    expect(game.attacker).to eq (game.player2)
    expect(game.defender).to eq (game.player1)
  end
end
