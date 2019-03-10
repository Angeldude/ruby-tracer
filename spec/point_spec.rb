require './spec/rspec_helper'

RSpec.describe 'a point' do
  let(:a){ point(4.3, -4.2, 3.1) }

  it 'is a point when w is 1' do
    expect(a.isPoint?).to be(true)
  end

  it 'is also a tuple' do
    expect(a).to be_a(Tuple)
  end

  it 'x is 4.3' do
    val = epsilon(a.x, 4.3)
    expect(val).to be(true)
  end

  it 'is not a vector' do
    expect(a.isVector?).to be(false)
  end
  
  it 'has a corresponding factory method' do
    expect(a).to eq(point(4.3, -4.2, 3.1))
  end

  it 'can subtract another point to yield a vector' do
    p1 = point(3, 2, 1)
    p2 = point(5, 6, 7)
    expect(p1 - p2).to eq(vector(-2, -4, -6))
  end
end