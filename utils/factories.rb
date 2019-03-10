%w[tuple color].each do |item|
  require_relative "../src/#{item}"
end

module Factories

  def point(x,y,z)
    Tuple.new(x,y,z,1)
  end

  def vector(x,y,z)
    Tuple.new(x,y,z,0)
  end

  def tuple(x,y,z,w)
    Tuple.new(x,y,z,w)
  end

  def epsilon(a, b)
    (a-b).abs < EPSILON
  end

  def magnitude vect
    Math.sqrt(vect.square_up)
  end

  def normalize vect
    x,y,z,w = vect.x / magnitude(vect), vect.y / magnitude(vect), vect.z / magnitude(vect), vect.w / magnitude(vect)
    tuple(x,y,z,w)
  end
  
  def color(x, y, z)
    Color.new(x,y,z)
  end
end