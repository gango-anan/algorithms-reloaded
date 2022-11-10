# def group_anagrams(words)
#     sorted_words = words.map { |word| word.split("").sort.join("") }.sort
#     grouped_words = []
#     i = 0
#     j = i + 1
#     counter = 0
#     while i < sorted_words.length - 1
#         grouped_words << [sorted_words[i]]
#         while j < sorted_words.length
#             if grouped_words[counter].include?(sorted_words[j])
#                 grouped_words[counter] << sorted_words[j]
#                 j += 1
#             else
#                 break
#             end
#         end
#         i = j 
#         j += 1
#         counter += 1
#     end

#     grouped_words
# end

def group_anagrams(words)
    grouped_words = {}
    words.each do |word|
        key = word.chars.sort.join

        if grouped_words.keys.include?(key)
            grouped_words[key] = grouped_words[key] << word
        else
            grouped_words[key] = [word]
        end
    end

    grouped_words.values
end


words = ["yo", "act", "flop", "tac","foo","cat","oy","olfp"]

p group_anagrams(words);