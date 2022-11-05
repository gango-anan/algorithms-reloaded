// This is an input class. Do not edit.
class LinkedList {
    constructor(value) {
      this.value = value;
      this.next = null;
    }
  }
  
  function mergeLinkedLists(headOne, headTwo) {
    let head = null;
    let tail = null;
    let currentNodeOne = headOne;
    let currentNodeTwo = headTwo;
  
    if (headOne.value < headTwo.value) {
      head = headOne;
      tail = headOne;
      currentNodeOne = headOne.next;
    } else {
      head = headTwo;
      tail = headTwo;
      currentNodeTwo = headTwo.next;
    }
  
    while(currentNodeOne && currentNodeTwo) {
      if (currentNodeOne.value < currentNodeTwo.value) {
        tail.next = currentNodeOne;
        currentNodeOne = currentNodeOne.next
      } else {
        tail.next = currentNodeTwo;
        currentNodeTwo = currentNodeTwo.next
      }
      console.log(1);
      tail = tail.next;
    }
  
    if(currentNodeOne) {
      tail.next = currentNodeOne;
    }
  
    if (currentNodeTwo) {
      tail.next = currentNodeTwo
    }
  
    return head;
  }
//// Test Case 1
// let headOne = new LinkedList(2);
//     headOne.next = new LinkedList(6);
//     headOne.next.next = new LinkedList(7);
//     headOne.next.next.next = new LinkedList(8);
    
// let headTwo = new LinkedList(1);
//     headTwo.next = new LinkedList(3);
//     headTwo.next.next = new LinkedList(4);
//     headTwo.next.next.next = new LinkedList(5);
//     headTwo.next.next.next.next = new LinkedList(9);
//     headTwo.next.next.next.next.next = new LinkedList(10);

////Test case 3
let headOne = new LinkedList(6);
    headOne.next = new LinkedList(7);
    headOne.next.next = new LinkedList(8);
    headOne.next.next.next = new LinkedList(9);
    headOne.next.next.next.next = new LinkedList(10);

let headTwo = new LinkedList(1);
    headTwo.next = new LinkedList(2);
    headTwo.next.next = new LinkedList(3);
    headTwo.next.next.next = new LinkedList(4);
    headTwo.next.next.next.next = new LinkedList(5);




console.log(mergeLinkedLists(headOne, headTwo));