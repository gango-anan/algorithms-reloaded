# This is a custom include method
 
require 'rspec'

# Option one
def custom_include?(phrase, substring)
    len = substring.length
    phrase.chars.each_with_index do |char, index|
        return true if phrase[index, len] == substring
    end

    false
end

# Option two
def custom_include_two?(phrase, substring)
    phrase[substring] == substring
end


describe 'custom_include? method' do
    phrase = "Ruby is a programmers' friend indeed!"
    it 'returns true if a substring is included in the provided phrase' do
        substring = "friend"
        expect(custom_include?(phrase, substring)).to be true
        expect(custom_include_two?(phrase, substring)).to be true
    end

    it 'returns false if a substring is not included in the provided phrase' do
        substring = "FrienD"
        expect(custom_include?(phrase, substring)).to be false
        expect(custom_include_two?(phrase, substring)).to be false
    end
end