require './spec/rspec_helper'

RSpec.describe 'a tuple' do
  let(:a){ tuple(3, -2, 5, 1.0) }

  it 'is a tuple' do
    expect(a).to be_a(Tuple)
  end

  it 'can add to yield another tuple' do
    second = tuple(-2, 3, 1, 0)
    expect(a + second).to eq(tuple(1,1,6,1))
  end

  it 'can negate a tuple' do
    expect(a.negate).to eq(tuple(-3, 2, -5, -1))
  end

  it 'can multiply by scalar' do
    expect(a * 3.5).to eq(tuple(10.5, -7,  17.5, 3.5))
  end

  it 'can multiply by a fraction' do
    expect(a * 0.5).to eq(tuple(1.5, -1,  2.5, 0.5))
  end

  it 'can divide by scalar' do
    expect(a / 2).to eq(tuple(1.5, -1,  2.5, 0.5))
  end

end