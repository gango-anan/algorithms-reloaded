function getPermutations(array) {
    if (array.length === 0) {
        return [];
    }
    else if(array.length === 1) {
        return [[array[0]]]
    }
    let collection = [];
    let subPermutations = getPermutations(array.slice(1));
    for (const subPermutation of subPermutations) {
        for (let index = 0; index <= subPermutation.length; index++) {
            copy = Array.from(subPermutation);
            copy.splice(index, 0, array[0]);
            collection.push(copy);
        }
    }

    return collection;
}

array = [1,2,3,4,5,6,7];

console.log(getPermutations(array));
