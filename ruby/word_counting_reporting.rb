# Implement the word counting and reporting functionality in ruby.

require 'rspec'

class String
    def total_words
        self.scan(/\w+/).count
    end

    def word_list
        list = Hash.new(0)
        # Either
        self.downcase.scan(/\w+/) { |word| list[word] += 1 }
        # Or
        # self.downcase.scan(/\w+/).each { |word| list[word] += 1 }
        list
    end
end

str = "- the quick brown fox / jumped over the lazy fox."
p str.word_list

describe 'Word Reporter' do
    before do
        @str = "- the quick brown fox / jumped over the lazy fox."
    end

    it 'Counts words accurately' do
        expect(@str.total_words).to eq(9)
    end

    it 'Returns a hash that totals up word usage' do
        expect(@str.word_list).to eq({"the"=>2, "quick"=>1, "brown"=>1, "fox"=>2, "jumped"=>1, "over"=>1, "lazy"=>1})
    end
end