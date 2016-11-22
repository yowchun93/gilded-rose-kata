class Backstage

  attr_reader :quality, :days_remaining

  def initialize(quality, days_remaining) 
    @quality = quality
    @days_remaining = days_remaining
  end

  def tick
   @days_remaining -= 1
    return if @quality >= 50 
    ## quality is 0 after sale date
    return @quality = 0 if @days_remaining < 0

    @quality += 1
    @quality += 1 if @days_remaining < 10 
    @quality += 1 if @days_remaining < 5 
  end

end