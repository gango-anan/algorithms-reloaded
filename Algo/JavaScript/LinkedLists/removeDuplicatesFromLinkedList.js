class LinkedList {
    constructor(value) {
      this.value = value;
      this.next = null;
    }
}

function removeDuplicatesFromLinkedList(linkedList) {
    let currentNode = linkedList;
    while(currentNode) {
      let nextNode = currentNode.next;
      if (nextNode && currentNode.value === nextNode.value) {
        nextNode = currentNode.next.next;
        currentNode.next = nextNode;
      } else {
        currentNode = nextNode;
      }
    }
  
    return linkedList;
}

// Changes the pointer to the next node after all the duplicates
function removeDuplicatesFromLinkedList_2(linkedList) {
    let currentNode = linkedList;
    while(currentNode){
        let nextNode = currentNode.next;
        while (nextNode && currentNode.value === nextNode.value) {
            nextNode = nextNode.next;
        }
        currentNode.next = nextNode;
        currentNode = nextNode;
    }
    return linkedList;
}


const firstNode = new LinkedList(1);
const node2 = new LinkedList(1);
const node3 = new LinkedList(3);
const node4 = new LinkedList(4);
const node5 = new LinkedList(4);
const node6 = new LinkedList(4);
const node7 = new LinkedList(5);
const node8 = new LinkedList(6);
const node9 = new LinkedList(6);
const node10 = new LinkedList(6);
firstNode.next = node2;
node2.next = node3;
node3.next = node4;
node4.next = node5;
node5.next = node6;
node6.next = node7;
node7.next = node8;
node8.next = node9;
node9.next = node10;

console.log(removeDuplicatesFromLinkedList(firstNode));
console.log(removeDuplicatesFromLinkedList_2(firstNode));



