require_relative '../lib/travel_game'

describe TravelGame do
  let(:game) { TravelGame.new }

  it 'sums steps' do
    game.make_steps(1, 2)
    expect(game.result).to eq(3)
  end

  it '2 steps back if 4' do
    game.make_steps(2, 2)
    expect(game.result).to eq(10)
  end

  it '2 steps back if 5' do
    game.make_steps(5)
    expect(game.result).to eq(3)
  end
end