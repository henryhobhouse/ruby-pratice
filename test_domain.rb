# Class to flip coin
class Coin
  attr_reader :result

  def flip
    flip_result.head_count(:heads) if rand(0..1) == 1
  end

  def flip_result
    @flip_result ||= Flip_result.new
  end
end

# Stores when heads is the result from coin.flip 
class Flip_result
  attr_reader :score

  def initialize
    @score = 0
  end

  def head_count(x)
    @score += 1 if x == :heads
  end

  def print_score
    puts "Head count is #{@score}"
  end
end
