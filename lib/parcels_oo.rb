class Parcel
  def initialize(height, width, length)
    @height = height
    @width = width
    @length = length
  end

  def volume
    @height * @width * @length
  end

  def shipping_category
    if volume <= 125
      "A"
    elsif volume > 125 && volume < 250
      "B"
    else
      "C"
    end
  end
end
