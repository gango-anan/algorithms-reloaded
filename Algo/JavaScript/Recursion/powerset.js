function powerset(array) {
	const subSets = [[]];
	array.forEach((elem) => {
		const subSetsLength = subSets.length;
		for (let index = 0; index < subSetsLength; index++) {
			const currentSubset = subSets[index];
			subSets.push(currentSubset.concat([elem]));
		}
	});
	return subSets;
}

array = [1, 2, 3];

console.log(powerset(array));
