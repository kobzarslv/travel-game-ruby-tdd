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
      end

    case sum
      when 5,12,24,28
        sum-=2
      when 4
        sum+=6
      when 7,14
        sum+=3
      when 9,17,21,27
        sum+=2 
      
      
    end
    sum
   # sum # returns sum
  end

end

game = TravelGame.new
game.make_steps(1, 2, 4)
puts game.result

