class Parcel
  def initialize(height, width, length)
    @height = height
    @width = width
    @length = length
  end

  def volume
    @height * @width * @length
  end

  def cost_to_ship
    if volume <= 125
      (volume * 0.025).round(2)
    elsif volume > 125 && volume < 250
      (volume * 0.05).round(2)
    else
      (volume * 0.075).round(2)
    end
  end
end
