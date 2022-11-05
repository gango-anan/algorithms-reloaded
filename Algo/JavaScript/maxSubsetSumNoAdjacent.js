// Option One: Time = O(n), Space  = O(n)
function maxSubsetSumNoAdjacent(array) {
    if(array.length === 0){
        return 0;
    } else if (array.length === 1) {
        return array[0];
    }

    const maxSums = [...array];
    maxSums[1] = Math.max(array[0], array[1]);
    for (let index = 2; index < array.length; index++) {
        maxSums[index] = Math.max(maxSums[index - 1], maxSums[index - 2] + array[index]);
    }

    return maxSums[array.length - 1];
}


// Option two: Time = O(n), Space  = O(1)
function maxSubsetSumNoAdjacent_(array) {
    if(array.length === 0){
        return 0;
    } else if (array.length === 1) {
        return array[0];
    }

    let first = array[0];
    let second = Math.max(array[0], array[1]);
    for (let index = 2; index < array.length; index++) {
        let current = Math.max(second, first + array[index]);
        first = second;
        second =  current
    }

    return second;
}

const array = [7, 10, 12, 7, 9, 14];
const array2 = [75, 105, 120, 75, 90, 135];

console.log(maxSubsetSumNoAdjacent(array));
console.log(maxSubsetSumNoAdjacent_(array2));