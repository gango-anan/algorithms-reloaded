// Bruteforce Time = O(n^2), Space = O(1)
function twoNumberSum(array, targetSum) {
	for (let i = 0; i < array.length - 1; i++) {
		for (let j = i + 1; j < array.length; j++) {
			if (array[i] + array[j] == targetSum) {
				return [array[i], array[j]];
			}
		}
	}

	return [];
}

// Two pointers; Time = O(nlogn), Space = O(1)
function twoNumberSum_2(array, targetSum) {
	let leftPointer = 0;
	let rightPointer = array.length - 1;
	array.sort((a, b) => a - b);
	while (leftPointer < rightPointer) {
		let sum = array[leftPointer] + array[rightPointer];
		if (sum === targetSum) {
			return [array[leftPointer], array[rightPointer]];
		} else if (sum < targetSum) {
			leftPointer += 1;
		} else {
			rightPointer -= 1;
		}
	}

	return [];
}

// Using a Hash table(JS Object) Time = O(n), Space = O(n)
function twoNumberSum_3(array, targetSum) {
	let hashNums = {};

	for (let index = 0; index < array.length; index++) {
		let diff = targetSum - array[index];
		if (diff != array[index] && hashNums[diff]) {
			return [array[index], diff];
		} else {
			hashNums[array[index]] = array[index];
		}
	}

	return [];
}

const array = [1, 2, 3, 4, 5, 6];
console.log(twoNumberSum(array, 10));
console.log(twoNumberSum_2(array, 10));
console.log(twoNumberSum_3(array, 10));

const arrayTwo = [3, 5, -4, 8, 11, 1, -1, 6];
console.log(twoNumberSum(arrayTwo, 10));
console.log(twoNumberSum_2(arrayTwo, 10));
console.log(twoNumberSum_3(arrayTwo, 10));
