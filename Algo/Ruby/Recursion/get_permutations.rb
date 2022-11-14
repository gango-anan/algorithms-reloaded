def getPermutations(array)
    return [[array[0]]] if array.length == 1
    collection = []
    sub_permutations = getPermutations(array[1, array.length - 1 ])
    sub_permutations.each do |sub_permutation|
        (0..sub_permutation.length).each do |index|
            copy = Array.new(sub_permutation)
            collection << copy.insert(index, array[0])
        end
    end

    return collection
end

array = [1,2,3,4]
p getPermutations(array)