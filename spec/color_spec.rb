require './spec/rspec_helper'

RSpec.describe 'a color' do
  it 'colors are r,g,b tuples' do
    c = color(-0.5, 0.4, 1.7)
    expect(c.red).to eql(-0.5)
  end
  
  it 'can add color' do
    c1 = color(0.9, 0.6, 0.75)
    c2 = color(0.7, 0.1, 0.25)
    
    expect(c1 + c2).to eq(color(1.6, 0.7, 1.0))
  end
  
   it 'can multiply by scalar' do
    c = color(0.2, 0.3, 0.4)    
    expect(c * 2).to eq(color(0.4, 0.6, 0.8))
  end
  
  it 'can multiply another color' do
    c1 = color(1, 0.2, 0.4)
    c2 = color(0.9, 1, 0.1)
    
    expect(c1 * c2).to eq(color(0.9, 0.2, 0.04))
  end
end