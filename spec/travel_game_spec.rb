require_relative '../lib/travel_game'

describe TravelGame do
  let(:game) { TravelGame.new }

  it 'sums steps' do
    game.make_steps(1, 2)
    expect(game.result).to eq(3)
  end

  it '2 steps back if 5' do
    game.make_steps(2, 3)
    expect(game.result).to eq(3)
  end
  it '2 steps back if 12' do
    game.make_steps(2, 3, 7)
    expect(game.result).to eq(10)
  end
  it '2 steps back if 24' do
    game.make_steps(12, 6, 6)
    expect(game.result).to eq(22)
  end
    it '2 steps back if 28' do
    game.make_steps(13, 13)
    expect(game.result).to eq(26)
  end
  it '6 steps up if 4' do
    game.make_steps(2,2)
    expect(game.result).to eq(10)
  end
  it '2 steps up if 9' do
    game.make_steps(3,6)
    expect(game.result).to eq(11)
  end
  it '2 steps up if 17' do
    game.make_steps(13,4)
    expect(game.result).to eq(19)
  end
  it '2 steps up if 21' do
    game.make_steps(13,8)
    expect(game.result).to eq(23)
  end
  it '2 steps up if 27' do
    game.make_steps(20,7)
    expect(game.result).to eq(29)
  end
  it '3 steps up if 7' do
    game.make_steps(3,4)
    expect(game.result).to eq(10)
  end
    it '3 steps up if 14' do
    game.make_steps(10,4)
    expect(game.result).to eq(17)
  end
end