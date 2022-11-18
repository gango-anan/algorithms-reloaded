function waterArea(heights) {
	const arrayLength = heights.length;
	let leftMaxHeight = 0;
	const leftMaxHeights = new Array(arrayLength);
	leftMaxHeights[0] = leftMaxHeight;

	for (let index = 1; index < heights.length; index++) {
		if (heights[index - 1] > leftMaxHeight) {
			leftMaxHeights[index] = heights[index - 1];
			leftMaxHeight = heights[index - 1];
		} else {
			leftMaxHeights[index] = leftMaxHeight;
		}
	}

	let rightMaxHeight = 0;
	const rightMaxHeights = new Array(heights.length);
	rightMaxHeights[arrayLength - 1] = rightMaxHeight;

	for (let index = arrayLength - 2; index >= 0; index--) {
		if (heights[index + 1] > rightMaxHeight) {
			rightMaxHeights[index] = heights[index + 1];
			rightMaxHeight = heights[index + 1];
		} else {
			rightMaxHeights[index] = rightMaxHeight;
		}
	}

	const waterHeld = [];
	for (let index = 0; index < arrayLength; index++) {
		const minHeight = Math.min(leftMaxHeights[index], rightMaxHeights[index]);
		const height = heights[index];
		let waterHeight = 0;
		if (height < minHeight) {
			waterHeight = minHeight - height;
		}
		waterHeld.push(waterHeight);
	}

	let totalWaterHeld = 0;
	waterHeld.forEach((water) => {
		totalWaterHeld += water;
	});

	return totalWaterHeld;
}

array = [0, 8, 0, 0, 5, 0, 0, 10, 0, 0, 1, 1, 0, 3];
waterArea(array);
