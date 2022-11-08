// Bruteforce solution
// Time complexity O(n^m) , Space O(m)
const canSum_ = (targetSum, numbers) => {
    if(targetSum === 0) return true;
    if(targetSum < 0) return false;

    for (let number of numbers) {
        const newTargetSum = targetSum - number;
        if (canSum_(newTargetSum, numbers) === true) {
            return true;
        }
    }

    return false;
}

// Memoized solution
// Time complexity O(n * m) , Space O(m)
const canSum = (targetSum, numbers, memo = {}) => {
    if(targetSum in memo) return memo[targetSum];
    if(targetSum === 0) return true;
    if(targetSum < 0) return false;

    for (let number of numbers) {
        const newTargetSum = targetSum - number;
        if (canSum(newTargetSum, numbers, memo) === true) {
            memo[targetSum] = true;
            return true;
        }
    }
    memo[targetSum] = false;

    return false;
}

console.log(canSum_(7, [5, 3, 4, 7]));
console.log(canSum(300, [7, 14]));
