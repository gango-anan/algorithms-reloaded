# Method to check if a word is a palindrome

def palindrome?(word)
    word.downcase == word.downcase.reverse
end

describe 'Check if a word is a palinrome' do
    it 'should return true if a word is a palindrome' do
        expect(palindrome?("ganag")).to be true
        expect(palindrome?("Tacocat")).to be true
    end

    it 'should return false if a word is not a palindrome' do
        expect(palindrome?("Gango")).to be false
    end
end