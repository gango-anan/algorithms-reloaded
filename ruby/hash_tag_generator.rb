# Method to generate a hash tag

class String
    def hash_tag_generator
        self.split.map { |word| "##{word}" }.join(' ')
    end
end

describe 'Hash_tag generator' do
    it 'takes in a string and generates a hash tag for each word' do
        str = 'fun words that need to be hashtags'
        expect(str.hash_tag_generator).to eq('#fun #words #that #need #to #be #hashtags')
    end
end