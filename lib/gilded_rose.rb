require_relative 'normal'
require_relative 'sulfuras'
require_relative 'backstage'
require_relative 'brie'
require_relative 'conjured'

class GildedRose
  attr_reader :name, :days_remaining, :quality

  def initialize(name, days_remaining, quality)
    @name = name
    @days_remaining = days_remaining
    @quality = quality
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

  def tick 
    case @name
    when 'normal item'
      @item = Normal.new(@quality, @days_remaining)
      @item.tick
    when 'Aged Brie'
      @item = Brie.new(@quality , @days_remaining)
      @item.tick
    when 'Sulfuras, Hand of Ragnaros'
      @item = Sulfuras.new(@quality , @days_remaining)
      @item.tick
    when 'Backstage passes to a TAFKAL80ETC concert'
      @item = Backstage.new(@quality , @days_remaining)
      @item.tick
    when 'Conjured Mana Cake'
      @item = Conjured.new(@quality, @days_remaining)
      @item.tick
    end
  end

  def quality
    return @item.quality if @item
    @quality
  end

  def days_remaining
    return @item.days_remaining if @item
    @days_remaining
  end

end