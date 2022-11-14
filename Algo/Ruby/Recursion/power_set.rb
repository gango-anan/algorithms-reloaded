   # Itereative solution
   # O(n*2^n) time and O(n*2^n) space
def power_set(array)
   subsets = [[]]
   for elem in array do
      for i in 0..subsets.length-1
         current_subset = subsets[i]
         subsets << (current_subset + [elem])
      end
   end
   subsets
end


   # Recursive solution
   # O(n*2^n) time and O(n*2^n) space
def powerset(array, idx = nil)
   if idx.nil?
      idx = array.length - 1
   elsif idx < 0
      return [[]]
   end
   elem = array[idx]
   subsets = powerset(array, idx - 1)
   for i in 0..subsets.length - 1
      current_subset = subsets[i]
      subsets << (current_subset + [elem])
   end
   subsets
end

p power_set([1,2,3])
p powerset([1,2,3])