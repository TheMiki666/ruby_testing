# frozen_string_literal: true

# class for computer to find random number
class FindNumber
  attr_reader :min, :max, :answer, :guess

  def initialize(min, max, answer = RandomNumber.new(min, max), guess = nil)
    @min = min
    @max = max
    # The RandomNumber class will have an instance variable '@value'
    @answer = answer.value
    @guess = guess
  end

  def make_guess(min, max)
    (min + max) / 2
  end

  def game_over?(guess)
    guess == @answer
  end

  def update_range(number)
    if number > @answer && number <= @max
      @max = number - 1
    elsif number < @answer && number >= @min
      @min = number + 1
    end
  end
end
