function powerset(array) {
  subSets = [[]];
  array.forEach((elem) => {
    for (let index = 0; index < subSets.length; index++) {
      currentSubset = subSets[index];
      subSets.push(currentSubset.concat([elem]));
    }
  });
  return subSets;
}