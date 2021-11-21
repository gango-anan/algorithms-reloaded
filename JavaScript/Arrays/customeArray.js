class MyArray {
  constructor() {
    this.length = 0;
    this.data = {};
  }

  get(index) {
    return this.data[index];
  }

  myPush(item) {
    this.data[this.length] = item;
    this.length += 1;
    return this.length;
  }

  myPop() {
    const lastItem = this.data[this.length - 1];
    delete this.data[this.length - 1];
    this.length -= 1;
    return lastItem;
  }

  myDelete(index) {
    const item = this.data[index];
    this.shiftItems(index);
    return item;
  }

  shiftItems(index) {
    for (let i = index; i < this.length - 1; i++) {
      this.data[i] = this.data[i+1];
    }
    delete this.data[this.length - 1];
    this.length -= 1;
  }

}