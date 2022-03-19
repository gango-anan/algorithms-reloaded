
def has_common_item_brute_force?(arr_one, arr_two)
  for i in 0...arr_one.length do
    for j in 0...arr_two.length do
      return true if arr_one[i] === arr_two[j]
    end
  end

  false
end

def has_common_item?(arr_one, arr_two)
  value_checker = {}

  arr_one.each do |value|
    value_checker[value] = true
  end

  arr_two.each do |elem|
    return true if value_checker["#{elem}"]
  end

  false
end

def has_common_item_ruby?(arr_one, arr_two)  # Language specific
  arr_one.each do |value|
    return true if arr_two.include?(value)
  end

  false
end

# describe 'has_common_item?' do
#   it 'returns true if there is a common item' do
#     array1 = []
#     array2 = []
#   end

#   it 'returns false if there is no common item' do
    
#   end
# end

p has_common_item_brute_force?(['a', 'b', 'c', 'd'], ['x', 'y', 'z'])
p has_common_item?(['a', 'b', 'c', 'd', 'y'], ['x', 'y', 'z'])
p has_common_item_ruby?(['a', 'b', 'c', 'd', 'y'], ['x', 'y', 'z'])