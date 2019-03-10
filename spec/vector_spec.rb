require './spec/rspec_helper'

RSpec.describe 'a vector' do
  let(:a){ vector(5, 6, 7) }

  it 'is a vector when w is 0' do
    expect(a.isVector?).to be(true)
  end

  it 'is also a tuple' do
    expect(a).to be_a(Tuple)
  end

  it 'x is 5' do
    val = epsilon(a.x, 5)
    expect(val).to be(true)
  end

  it 'is not a point' do
    expect(a.isPoint?).to be(false)
  end
  
  it 'has a corresponding factory method' do
    expect(a).to eq(vector(5, 6, 7))
  end

  it 'can subtract a vector from a point to yield a point' do
    p1 = point(3, 2, 1)
    expect(p1 - a).to eq(point(-2, -4, -6))
  end

  it 'can subtract another vector to yield a vector' do
    v1 = vector(3, 2, 1)
    expect(v1 - a).to eq(vector(-2, -4, -6))
  end

  it 'can subtract from the zero vector' do
    zero = vector(0,0,0)
    expect(zero - a).to eq(vector(-5,-6, -7))
  end

  it 'can compute the magnitude' do
    expect(magnitude(a)).to eql(Math.sqrt(25 + 36 + 49))
  end

  it 'unit magnitude' do
    v = vector(0,1,0)
    expect(magnitude(v)).to eq(1)
  end

  it 'can normalize a vector' do
    val = normalize(a)
    expect(val.x).to be_within(0.5).of(0.5)
  end
    
  it 'can perform a dot product' do
    val = vector(1,2,3)
    expect(a.dot(val)).to eql(38)
  end
  
  it 'can perform a cross product' do
    b = vector(2, 3, 4)
    expect(a.cross(b)).to eq(vector(3, -6, 3))
  end
end