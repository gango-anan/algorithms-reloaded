# Find the Largest words in an Array

require 'rspec'

def largest_words(words, num)
    words.max_by(num) { |word| word.length }
end

describe 'Largest words' do
    it 'returns the largest words from an array' do
        strings = %w[a group of words that are variable length]
        expect(largest_words(strings, 3)).to eql(["variable", "length", "words"])
    end
end

strings = %w(a group of words that are variable length)
p largest_words(strings, 3)