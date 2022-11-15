require 'rspec'

# Using Bruteforce, Time = O(n^2), Space = O(1)
def two_sum(array, target_sum)
    array_length = array.length
    i = 0
    while i < array_length - 1
        j = i + 1
        while j < array_length
            return [array[i], array[j]] if(array[i] + array[j] == target_sum)
            j += 1
        end
        i += 1
    end

    []
end

# Using Two pointers, Time = O(nlogn), Space = O(1)
def two_sum_(array, target_sum)
    array.sort
    left_pointer = 0
    right_pointer = array.length - 1

    while left_pointer < right_pointer
       if(array[left_pointer] + array[right_pointer] == target_sum)
            return [array[left_pointer], array[right_pointer]]
       elsif(array[left_pointer] + array[right_pointer] < target_sum)
            left_pointer += 1
       else
            right_pointer -= 1
       end
    end

    []
end

# Using a Hash table, Time = O(n), Space = O(n)
def two_sum__(array, target_sum)
    hash_nums = {}
    index = 0
    while index < array.length
        diff = target_sum - array[index]
        return [array[index], diff] if(diff != array[index] && hash_nums[diff])
        hash_nums[array[index]] = array[index]
        index += 1
    end

    []
end



describe 'two_sum' do
    it 'it finds a pair of integers that sums up to the target sum' do
        expect(two_sum([3, 5, -4, 11, 1, -1, 6], 10)).to include(-1, 11)  # [-1, 11] or [11, 1]
    end
    it 'it finds a pair of integers that sums up to the target sum' do
        expect(two_sum_([4, 6], 10)).to include(4, 6) # [4, 6] or [6, 4]
    end
    it 'it finds a pair of integers that sums up to the target sum' do
        expect(two_sum__([4, 6, 1], 5)).to include(4, 1) # [4, 1] or [1, 4]
    end
end

p two_sum__([1, 2, 3, 4, 5, 6, 7, 8, 9, 15], 18) #=> [3, 15] or [15, 3]
p two_sum__([4, 6, 1], 5) #=> [4, 1] or [1, 4]