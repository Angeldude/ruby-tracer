require_relative './tuple'

class Color < Tuple
  attr_reader :red, :green, :blue
  def initialize(x,y,z)
    super(x,y,z,0)
    @red = x
    @green = y
    @blue = z
  end
  
  def * value
    if value.kind_of? Color
      Color.new(value.red * red, value.green * green, value.blue * blue)
    else
      super
    end
  end
end
