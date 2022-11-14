// Time complexity O(w*n*log(n)), Space complexity O(wn)
// where w is the length of the word and n is the number of the words

function groupAnagrams(words) {
	const grouped = {};
	for (const word of words) {
		const key = wordSort(word);
		if (key in grouped) {
			const value = grouped[key];
			value.push(word);
		} else {
			grouped[key] = [word];
		}
	}

	return Object.values(grouped);
}

const wordSort = function (word) {
	return word.split('').sort().join('');
};

words = ['yo', 'act', 'flop', 'tac', 'foo', 'cat', 'oy', 'olfp'];
console.log(groupAnagrams(words));
