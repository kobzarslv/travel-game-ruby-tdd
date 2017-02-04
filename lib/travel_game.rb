class TravelGame
  def make_steps(*steps) # is array
    @steps = steps # [1, 2]
  end

  def result
    steps_sum
  end


  private
  def steps_sum
    sum = 0

    @steps.each do |step|
      sum = sum + step

      if sum === 4
        sum = sum - 2
      elsif sum === 9
        sum = sum - 4
      end
    end

    sum # returns sum
  end
end

game = TravelGame.new
game.make_steps(1, 2, 4)
puts game.result
