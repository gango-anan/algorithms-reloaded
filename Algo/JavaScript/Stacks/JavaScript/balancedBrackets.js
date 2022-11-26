// Helper functions
function isOpeningBrace(brace) {
	return ['(', '[', '{'].includes(brace);
}

function isClosingBrace(brace) {
	return [')', ']', '}'].includes(brace);
}

function isNotMatichingBrace(openingBrace, closingBrace) {
	const braceMatcher = { '(': ')', '{': '}', '[': ']' };
	return closingBrace != braceMatcher[openingBrace];
}

//============================================================

function balancedBrackets(string) {
	let stack = [];
	let openConter = 0;
	let closeCounter = 0;

	for (let index = 0; index < string.length; index++) {
		const currentBrace = string[index];

		if (isOpeningBrace(currentBrace)) {
			stack.push(currentBrace);
		} else if (isClosingBrace(currentBrace)) {
			const poppedBrace = stack.pop();

			if (poppedBrace === undefined) {
				return false;
			}

			if (isNotMatichingBrace(poppedBrace, currentBrace)) {
				return false;
			}
		}
	}

	if (stack.length > 0) {
		return false;
	}

	return true;
}

text = '(a)';
console.log(balancedBrackets(text));
