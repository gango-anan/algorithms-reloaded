# Grid traveller algorithm using memoization
# Time complexity O(m * n), Space complexity O(m + n)
def grid_traveler(m, n, memo = {})
    checker = "#{m},#{n}"
    return memo[checker] if memo[checker]
    return 1 if(m == 1 && n == 1)
    return 0 if(m == 0 || n == 0)

    memo[checker] = grid_traveler(m - 1, n, memo) + grid_traveler(m, n - 1, memo)
end

puts grid_traveler(2, 3)
puts grid_traveler(3, 3)
puts grid_traveler(4, 2)
puts grid_traveler(6, 5)
puts grid_traveler(18, 18)
