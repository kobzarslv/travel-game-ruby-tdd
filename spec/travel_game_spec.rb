require_relative '../lib/travel_game'

describe TravelGame do
  it 'sums steps' do
    game = TravelGame.new
    game.make_steps(1, 2)
    expect(game.result).to eq(3)
  end

  it '2 steps back if 4' do
    game = TravelGame.new
    game.make_steps(2, 2)
    expect(game.result).to eq(2)
  end

  it '3 steps back if 9' do
    game = TravelGame.new
    game.make_ste
  end
end