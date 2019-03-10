require_relative '../utils/factories'

class Tuple
  attr_reader :x, :y, :z, :w
  def initialize(x,y,z,w)
    @x = x
    @y = y
    @z = z
    @w = w
  end

  def isVector?
    w == 0
  end

  def isPoint?
    w == 1
  end

  def square_up
    x*x + y*y + z*z
  end
  
  def == obj
    x == obj.x and y == obj.y and z == obj.z and obj.w == w
  end

  def + obj
    Tuple.new(x+obj.x, y+obj.y, z + obj.z, w + obj.w)
  end

  def - obj
    Tuple.new(x - obj.x, y - obj.y, z - obj.z, w - obj.w)
  end

  def * scalar
    Tuple.new(x * scalar, y * scalar, z * scalar, w * scalar)
  end

  def / divisor
    scalar = divisor.to_f
    Tuple.new(x / scalar, y / scalar, z / scalar, w / scalar)
  end

  def negate
    Tuple.new(0,0,0,0) - self
  end
  
  def dot(vector)
    x * vector.x + y * vector.y + z * vector.z
  end
  
  def cross(vector)
    Tuple.new(y*vector.z - z*vector.y,
              z*vector.x - x*vector.z,
              x*vector.y - y*vector.x, 0.0)
  end

end