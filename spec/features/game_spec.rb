require 'game'


describe Game do
  let(:player) { double :player, take_damage: 90 }
  it 'attack method works on game class' do
    expect(subject.attack(player)).to eq(90)
  end
end
