require 'byebug'
class Normal

  attr_reader :quality, :days_remaining

  def initialize(quality, days_remaining) 
    @quality = quality
    @days_remaining = days_remaining
  end
  
  def tick
    @days_remaining -= 1
    return if @quality == 0
    @quality -= 1
    @quality -= 1 if @days_remaining <= 0
  end

end