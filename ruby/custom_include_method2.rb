# Implement the include method

class Array
    def does_it_have? element
        each do |i|
            return true if i == element
        end
 
        false
    end
end

describe 'include? clone' do
   it 'returns true if a supplied element is included in an array' do
        arr = [2, 5, 100, 4]
        expect(arr.does_it_have? 5).to eq(true)
   end
   it 'returns false if a supplied element is not included in an array' do
    arr = [2, 5, 100, 4]
    expect(arr.does_it_have? 20).to eq(false)
end
end