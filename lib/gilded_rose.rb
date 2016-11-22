require_relative 'normal'
require_relative 'sulfuras'
require_relative 'backstage'
require_relative 'brie'
require_relative 'conjured'

class GildedRose
  # attr_reader :name, :days_remaining, :quality

  # def initialize(name, days_remaining, quality)
  #   @name = name
  #   @days_remaining = days_remaining
  #   @quality = quality
  # end

  def initialize(name, days_remaining, quality)
    @item = klass_for(name).new(quality,days_remaining)
  end

  # def tick
  #   # if @name == 'normal item'
  #   #   return normal_tick
  #   # end
  #   ## calculating @quality
  #   if @name != 'Aged Brie' && @name != 'Backstage passes to a TAFKAL80ETC concert'
  #     if @quality > 0
  #       if @name != 'Sulfuras, Hand of Ragnaros'
  #         @quality -= 1
  #       end
  #     end
  #   else
  #     if @quality < 50
  #       @quality += 1
  #       if @name == 'Backstage passes to a TAFKAL80ETC concert'
  #         if @days_remaining < 11
  #           if @quality < 50
  #             @quality += 1
  #           end
  #         end
  #         if @days_remaining < 6
  #           if @quality < 50
  #             @quality += 1
  #           end
  #         end
  #       end
  #     end
  #   end
  #   if @name != 'Sulfuras, Hand of Ragnaros'
  #     @days_remaining -= 1
  #   end
  #   if @days_remaining < 0
  #     if @name != 'Aged Brie'
  #       if @name != 'Backstage passes to a TAFKAL80ETC concert'
  #         if @quality > 0
  #           if @name != 'Sulfuras, Hand of Ragnaros'
  #             @quality -= 1
  #           end
  #         end
  #       else
  #         @quality = @quality - @quality
  #       end
  #     else
  #       if @quality < 50
  #         @quality += 1
  #       end
  #     end
  #   end
  # end
  def klass_for(name)
    case name
    when 'normal item'
      Normal
    when 'Aged Brie'
      Brie
    when 'Sulfuras, Hand of Ragnaros'
      Sulfuras
    when 'Backstage passes to a TAFKAL80ETC concert'
      Backstage
    when 'Conjured Mana Cake'
      Conjured
    end
  end

  def tick 
    @item.tick
  end

  def quality
    @item.quality
  end

  def days_remaining
    @item.days_remaining
  end

end