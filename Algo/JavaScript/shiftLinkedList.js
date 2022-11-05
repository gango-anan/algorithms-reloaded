class LinkedList {
    constructor(value) {
      this.value = value;
      this.next = null;
    }
}
  
function shiftLinkedList(head, k) {
    if (k == 0) {
        return head;
    }

    let currentNode = head;
    let listLength = 0;
    let tail = head;
    let newTail = head;

    while(currentNode) {
        tail = currentNode;
        listLength += 1;
        currentNode = currentNode.next;
    }

    if (Math.abs(k) % listLength == 0) {
        return head;
    }

    const indexToShiftAt = k > 0 ? listLength - (k % listLength) : Math.abs(k) % listLength;
    let index = 0;
    currentNode = head;
    while (index < indexToShiftAt) {
        newTail = currentNode
        currentNode = currentNode.next;
        index += 1;
    }

    const newHead = currentNode;
    newTail.next = null;
    tail.next = head;

    return newHead;
}

let headOne = new LinkedList(0);
    headOne.next = new LinkedList(1);
    headOne.next.next = new LinkedList(2);
    headOne.next.next.next = new LinkedList(3);
    headOne.next.next.next.next = new LinkedList(4);
    headOne.next.next.next.next.next = new LinkedList(5);

console.log(shiftLinkedList(headOne, -14));