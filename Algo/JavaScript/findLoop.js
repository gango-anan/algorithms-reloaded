// This is an input class. Do not edit.
class LinkedList {
	constructor(value) {
		this.value = value;
		this.next = null;
	}
}

function findLoop(head) {
	let currentNode = head;
	let nodesTraversed = {};
	while (currentNode) {
		if (nodesTraversed[`${currentNode.value}`]) {
			return currentNode;
		}
		nodesTraversed[`${currentNode.value}`] = currentNode;
		currentNode = currentNode.next;
	}
	return null;
}
