# Option two: Time = O(n), Space  = O(n)
def max_subset_sum_no_adjacent(array)
   if array.length.zero?
    return 0
   elsif(array.length == 1)
    return array[0]
   end

   maxSums = array[0, array.length]
   maxSums[1] = maximum(array[0], array[1])
   for index in (2 ... array.length)
    maxSums[index] = maximum(maxSums[index - 1], maxSums[index - 2] + array[index])
   end

   maxSums[-1]
end

# Option two: Time = O(n), Space  = O(1)
def max_subset_sum_no_adjacent_(array)
    if array.length.zero?
     return 0
    elsif(array.length == 1)
     return array[0]
    end
 
    first = array[0]
    second = maximum(array[0], array[1])
    
    for index in (2 ... array.length)
        current = maximum(second, first + array[index])
        first = second
        second = current
    end
 
    second
 end

def maximum(*values)
    values.max
end

array = [7, 10, 12, 7, 9, 14] 
array2 = [75, 105, 120, 75, 90, 135] 
p max_subset_sum_no_adjacent(array)     #=> 33
p max_subset_sum_no_adjacent_(array2)    #=> 330