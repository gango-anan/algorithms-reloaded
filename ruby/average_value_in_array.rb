# Implement an array method to find the average value in the array

require 'rspec'

class Array
    def average
        inject(&:+) / size
    end
end

describe 'Calculating Average' do
    it 'returns the average value from an array' do
        arr = [100, 50, 75]
        expect(arr.average).to eq(75)
    end
end