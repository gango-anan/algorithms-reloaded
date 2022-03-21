# Generate the sum of numbers in a dynamic range
require 'rspec'

def sum_generator(num)
  1.upto(num).inject(&:+)
end

def sum_generator_agp(num)
  num * (num + 1) / 2  # Used arithmetic progression.
end

describe 'Dynamic sum' do
  it 'Outputs a sum of digits, ranging from 0 through the argument value' do
    expect(sum_generator(10)).to eq(55)
  end
end

p sum_generator 10
