const gridTraveler = (m, n, memo = {}) => {
    const key = m + '_' + n;
    if(key in memo) return memo[key];
    if(m == 0 || n == 0) return 0;
    if(m ==1 && n == 1) return 1;
    
    memo[key] = gridTraveler(m - 1, n, memo) + gridTraveler(m, n - 1, memo);

    return memo[key];
};

console.log(gridTraveler(2, 3));
console.log(gridTraveler(3, 3));
console.log(gridTraveler(4, 4));
console.log(gridTraveler(5, 10));
console.log(gridTraveler(20, 20));
