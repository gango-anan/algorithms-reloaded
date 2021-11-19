def appears_odd_number_of_times(array)
  hash_buffer = Hash.new(0);

  array.each do |elem|
    hash_buffer[elem] = hash_buffer[elem] += 1
  end

  hash_buffer.each do |key, value|
    return key if value % 2 == 1
  end

  nil
end

p appears_odd_number_of_times([1,1,2,2,3,0,3])