# Method to find the largest word in an array of sentences.
require 'rspec'

class Array
    def largest_word
        flat_map(&:split).max_by(&:length)
    end
end

describe "word max" do
    it 'returns the longest word from an array of sentences' do
        arr = ['A sentence', 'broken into several', 'array elements']
        expect(arr.largest_word).to eq('sentence')
    end
end

arr = ['A sentence', 'broken into several', 'array elements']

p arr.largest_word