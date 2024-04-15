const arrayZero = [42, 40, 45];

var array1 = [42, 45, 40];
console.log(array1);

const array2 = [45, 40, 42];

array2[0] = 42;
array2[1] = 45;
array2[2] = 40;

console.log(array2);

let amd = 80 * 0.5;
console.log(amd)  //mb, was researching AMD Stocks

const arr3 = ["Javascript", "SQL", "Lua", "C", "C++", "Ruby", "HTML"];

arr3[0] = "Javascript";
arr3[1] = "SQL";
arr3[2] = "Ruby";
arr3[3] = "C++";
arr3[4] = "C";
arr3[5] = "HTML";
arr3[6] = "Lua";

console.log(arr3);

arrayZero.push(47);

const array = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [10, 11, 12],
    [[13, 14, 15], 16, 17]
];

const oneArray = array[0];
const twoArray = array[4][2];
const threeArray = array[4][0][1];

console.log(threeArray);

console.log(arrayZero)


const array46 = ["I'mma", "Gonna", "Blouw"];

const arrayremove46 = array46.shift();

console.log(arrayremove46);

const array45 = ["I'm", "Gonna", "Blouw"];

const arrayremove45 = array45.pop();

console.log(arrayremove45); 
