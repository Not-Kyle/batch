
const strings1 = ".";
let rando1 = Math.floor(Math.random()*255);
let rando2 = Math.floor(Math.random()*255);
let rando3 = Math.floor(Math.random()*255);                          //gotta clean up these lines 
let rando4 = Math.floor(Math.random()*255);

console.log(rando1,strings1,rando2,strings1,rando3,strings1,rando4);

const ddoslinko = '<a href="http://www.netscout.com/ddos-attack-map" target="_blank">Link</a>';

let randomipgen = Math.floor(Math.random()*255) + "." + Math.floor(Math.random()*255) + "." + Math.floor(Math.random()*255) + "." + Math.floor(Math.random()*255)

console.log(randomipgen);

var array1 = [42, 45, 40];
console.log(array1);

const arrayzero = (["ZETA", 3]["Aurora", 2]);
arrayzero.push(["Reaver", 7]);

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

const arrayfive = ["HTML, Javascript"];

arrayfive[0] = "Javascript";
arrayfive[1] = "HTML";

console.log(arrayfive);

function test() {
    for(var i = 0; i < 1000; i++) {

    }
}
console.time("Timer");
test();
console.timeEnd("Timer");

let newarray = [
    [1, 2, 3], //0 row
    [4, 5, 6], //1 row
    [7, 8, 9], //2 row
    [10, 11, 12], //3 row
    [13, 14, 15], //4 row
    [16, 17, 18], //5 row
    [[19, 20, 21], 22, 23, 24], //sub 6 row
]

let newarrayone = newarray[0][2];
let newarraytwo = newarray[1][1];
let newarraythree = newarray[2][2];
let newarrayfour = newarray[3][1];
let newarrayfive = newarray[4][0];
let newarraysix = newarray[5][2];
let newarrayseven = newarray[6][0][2];

console.log(newarrayone, newarraytwo, newarraythree, newarrayfour, newarrayfive, newarraysix, newarrayseven);
console.log(newarrayone + newarraytwo + newarraythree + newarrayfour + newarrayfive + newarraysix + newarrayseven);


console.log(arrayZero);
