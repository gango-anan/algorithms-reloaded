# Time complexity O(w*n*log(n)), Space complexity O(wn)
# where w is the length of the word and n is the number of the words

def group_anagrams(words)
    grouped_words = {}
    words.each do |word|
        key = word.chars.sort.join

        if grouped_words.has_key?(key)
            grouped_words[key] = grouped_words[key] << word
        else
            grouped_words[key] = [word]
        end
    end

    grouped_words.values
end


words = ["yo", "act", "flop", "tac","foo","cat","oy","olfp"]

p group_anagrams(words);