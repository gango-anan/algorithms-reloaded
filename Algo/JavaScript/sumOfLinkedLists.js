class LinkedList {
    constructor(value) {
      this.value = value;
      this.next = null;
    }
  }
  
  function sumOfLinkedLists(linkedListOne, linkedListTwo) {
    let head = new LinkedList(0);
    let currentNode = head;
    let carryOver = 0;
    let valueOne = 0;
    let valueTwo = 0;
    while(linkedListOne || linkedListTwo || carryOver) {
      if (linkedListOne && linkedListTwo) {
        valueOne = linkedListOne.value;
        valueTwo = linkedListTwo.value;
        linkedListOne = linkedListOne.next;
        linkedListTwo = linkedListTwo.next;
      } else if(linkedListOne && !linkedListTwo) {
        valueOne = linkedListOne.value;
        valueTwo = 0;
        linkedListOne = linkedListOne.next;
      } else if(!linkedListOne && linkedListTwo) {
        valueOne = 0;
        valueTwo = linkedListTwo.value;
        linkedListTwo = linkedListTwo.next;
      } else if(!linkedListOne && !linkedListTwo && carryOver) {
        valueOne = 0;
        valueTwo = 0;
      }
  
      const total = valueOne + valueTwo + carryOver;
      const sum = total % 10;
  
      if (!linkedListOne && !linkedListTwo && total < 10) {
        carryOver = null;
      } else {
        carryOver = Math.floor(total / 10);
      }
  
      let nextNode = new LinkedList(sum);
      currentNode.next = nextNode;
      currentNode = nextNode;
    }
    const listOfSums = head.next;
    
    return listOfSums;
  }

