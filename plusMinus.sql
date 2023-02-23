'use strict';

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString: string = '';
let inputLines: string[] = [];
let currentLine: number = 0;

process.stdin.on('data', function(inputStdin: string): void {
    inputString += inputStdin;
});

process.stdin.on('end', function(): void {
    inputLines = inputString.split('\n');
    inputString = '';

    main();
});

function readLine(): string {
    return inputLines[currentLine++];
}

/*
 * Complete the 'plusMinus' function below.
 *
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

function plusMinus(arr: number[]): void {
    // Write your code here
    const positiveArr = []
    const negativeArr = []
    const zeroArr = []
    
    for(let index: number = 0; index < arr.length; index++) {
        if(arr[index] > 0) positiveArr.push(arr[index])
        if(arr[index] < 0) negativeArr.push(arr[index])
        if(arr[index] === 0) zeroArr.push(arr[index])
    }
    
    const proportionPositive = positiveArr.length/arr.length
    const proportionNegative = negativeArr.length/arr.length
    const proportionZero = zeroArr.length/arr.length
    
    console.log(proportionPositive)
    console.log(proportionNegative)
    console.log(proportionZero)
}

function main() {
    const n: number = parseInt(readLine().trim(), 10);

    const arr: number[] = readLine().replace(/\s+$/g, '').split(' ').map(arrTemp => parseInt(arrTemp, 10));

    plusMinus(arr);
}
