# Algorithm that returns the nth Fibonacci number 
# Time complexity O(n), Space complexity O(n) 
def fib(n, memo ={})
    return memo[n] if memo[n]
    return 1 if n <= 2
    memo[n] = fib(n-2, memo) + fib(n-1, memo)
    return memo[n]
end

# Fibonacci series 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, ...
puts fib(9) #=> 34