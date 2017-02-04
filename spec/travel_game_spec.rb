require_relative '../lib/travel_game'

describe TravelGame do
  it 'it sums steps' do
    game = TravelGame.new
    game.make_steps(1, 2)
    expect(game.result).to eq(3)
  end
end