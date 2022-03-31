# Method to calculate the nth fibonacci number
require 'rspec'

def nth_fibonacci n
    (1..n).inject([0, 1]) { |arr| arr << arr.last(2).inject(:+) }.last
end

describe 'nth_fibonacci_number' do
    it 'properly calcuates the fibonacci value' do
        expect(nth_fibonacci 10).to eq(89)
    end
end