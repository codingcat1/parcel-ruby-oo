class Parcel
  def initialize(height, width, length)
    @height = height
    @width = width
    @length = length
  end

  def volume
    @height * @width * @length
  end
end
