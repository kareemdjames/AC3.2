//: Playground - noun: a place where people can play

import UIKit

// Closures-One-Exercises

//1. Create a closure that has no parameters or values and prints "Hello Closures!". Check by passing closure's return to a variable

var hello = {
    return "Hello Closures!"
}
print(hello())

//2. Create a closure that takes one Int and returns the doubled value. Check by passing closure's return to a variable.

var double = {(num: Int) -> Int in
    return num * 2
}

//3. Create a closure that takes one Int and returns a bool whether or not it's divisible by 3.

var divisibleByThree = {(num: Int) -> Bool in
    if num % 3 == 0 {
        return true
    }
    else {
        return false
    }
}

divisibleByThree(27)

//4. Create a closure that takes two strings as input and returns the longest character count of the two strings.

var longCharCount = {(str1: String, str2: String) -> Int in
    
    var x = str1.characters.count
    var y = str2.characters.count
    if x > y {
        return x
    }
    else {
        return y
    }
}

//5a. Create a closure that takes an array of Int as input and returns the largest element in the array

    var largestElement = {(arr: [Int]) -> Int in
        var sum = 0
        for i in 0..<arr.count {
            if arr[i] > sum {
                sum = arr[i]
            }
        
        }
        return sum
    }
    
var myElement = [1,2,3,4,5,6,27]
    print(largestElement(myElement))
    
//5b.  Create a closure that takes an array of Int and variable x: Int as input and returns the xth largest element in the array.  Assume x is always < the count of the array

//var xthLargest = {(arr: [Int], x: Int) -> Int in
//    var arr = arr.sort(<)
//    var x = arr[x-1]
//    return x
//}

var myArray1 = [23,45,67,5,100,54] //5,23,45,54,67,100

//xthLargest(myArray1, 3)

//5c.  Rewrite 5b and add handling for cases where x >= the count of the array (Hint: Use optionals)

//var xthLargest = {(arr: [Int], x: Int?) -> Int? in
//    var arr = arr.sort(<)
//    var y = arr[x-1]
//    
//    if x >= arr.count {
//        return nil
//    }
//    else {
//        return y
//    }
//
//}
//
//xthLargest(myArray1, 9)


//Higher order functions

let myArray = [34,42,42,1,3,4,3,2,49]

//6a. Sort myArray in ascending order by defining the constant ascendingOrder below.

let ascendingOrder = {(x: Int, y: Int) -> Bool in
    return x < y
}

let mySortedArray = myArray.sort(ascendingOrder)


//6b. Sort myArray in descending order by defining the constant descendingOrder below.

let descendingOrder = {(x: Int, y:Int) -> Bool in
    return x > y
}

let mySecondSortedArray = myArray.sort(descendingOrder)


let arrayOfArrays = [[3,65,2,4],[25,3,1,6],[245,2,3,5,74]]

//7a. Sort arrayOfArrays in ascending order by the 3rd element in each array.  Assume each array will have at least 3 elements

let sortedArrayofArrays = arrayOfArrays.sort {(x: [Int], y: [Int]) -> Bool in
    
    var arr1 = x[2]
    var arr2 = y[2]
    
    return arr1 < arr2
}

   

//7b. Sort arrayOfArrays in ascending order by the 3rd element in each array.  Don't assume each array will have at least 3 elements.  Put all arrays that have less than 3 elements at the end in any order.

let sortedArrayofArraysB = arrayOfArrays.sort {(x: [Int], y: [Int]) -> Bool in
    
    var arr1 = x[2]
    var arr2 = y[2]
    
    if x.count < 3 {
       
    }
    
    return arr1 < arr2
}

    
let letterValues = [
    "a" : 54,
    "b" : 24,
    "c" : 42,
    "d" : 31,
    "e" : 35,
    "f" : 14,
    "g" : 15,
    "h" : 311,
    "i" : 312,
    "j" : 32,
    "k" : 93,
    "l" : 203,
    "m" : 212,
    "n" : 41,
    "o" : 102,
    "p" : 999,
    "q" : 1044,
    "r" : 404,
    "s" : 649,
    "t" : 414,
    "u" : 121,
    "v" : 838,
    "w" : 555,
    "x" : 1001,
    "y" : 123,
    "z" : 432
]

//8a. Sort the string below in descending order according the dictionary letterValues

var codeString = "aldfjaekwjnfaekjnf"

let codeStringAsArr = Array(codeString.characters)

codeStringAsArr.sort {(a: Character, b: Character) -> Bool in
    let aValue = letterValues[String(a)]
    let bValue = letterValues[String(b)]
    return aValue < bValue


//8b.  Sort the string below in ascending order according the dictionary letterValues

var codeStringTwo = "znwemnrfewpiqn"



//9.  Write a function that takes a function as input and returns a function that doubles the output of the input function

//Input: (Int) -> Int
//Output: (Int) -> Int

//10.  Write a closure tripleNumber that takes no arguments and returns void.  It should multiply the global variable number by 3 each time the closure is run.

var number = 1

let tripleNumber = {
        number *= 3
    }
tripleNumber()
tripleNumber()
    print(number)

//9. Given a tuple representation of our names from before:

let firstAndLastTuples = [("Johann S.", "Bach"),
                                 ("Claudio", "Monteverdi"),
                                 ("Duke", "Ellington"),
                                 ("W. A.", "Mozart"),
                                 ("Nicolai","Rimsky-Korsakov"),
                                 ("Scott","Joplin"),
                                 ("Josquin","Des Prez")]

// sort the array of tuples by last name. Print the sorted array using string interpolation so that
// the output looks like:
// Bach, Johann S.
// Des Prez, Josquin
// .
// .
// .

let sorted = firstAndLastTuples.sort {(first: (String,String), last: (String,String)) -> Bool in
    return first.1 < last.1
    
}
    for tuple in sorted {
        print("\(tuple.1), \(tuple.0)")
}
        
        
    
    
    
    
    
//10. Build an array of tuples representing everyone in the class. Here you are sorted by first name:
//

//Amber Spadafora	3201
//Ana Ma	3202
//Annie Tung	3203
//Cristopher Chavez	3204
//Eashir Arafat	3205
//Edward Anchundia	3206
//Emily Chu	3207
//Eric Chang	3208
//Erica Stevens	3209
//Fernando Ventura	3210
//Harichandan Singh	3211
//Ilmira Estil	3212
//Jermaine Kelly	3213
//Gabriel Breshears	3214
//Kadell Gregory	3215
//Kareem James	3216
//Karen  Manzanares Fuentes 	3217
//Leandro Nunez	3218
//Liam Kane	3219
//Luz Loayza Herrera	3220
//Madushani Lekam Wasam Liyanage	3221
//Marcel Chaucer	3222
//Margaret Ikeda	3223
//Maria Scutaru	3224
//Marty Avedon	3225
//Michael Pinnock	3226
//Miti  Shah	3227
//Rukiye Karadeniz	3228
//Sabrina Ip	3229
//Simone Grant	3230
//Sophia Barrett	3231
//Thinley  Dorjee	3232
//Tom Seymour	3233
//Tong Lin	3234
//Tyler Newton	3235
//Victor Zhong	3236

// Here's an example of how to start:
let ac32folks = [("Amber", "Spadafora",	3201),
                 ("Ana", "Ma",	3202),
                 ("Annie", "Tung",	3203)]
// and so on...

// Build a sort comparison closure that will bring your name as close to the top as possible.
// We will use this to determine the order we use to access the microwave.
// Feel free to add fields to the tuple to accomplish this -- yes, this is a cheat.



//11. Create a closure that takes an two arrays of strings as input. Output a new string with the contents of the arrays in alternating order and separated by a space. If one array's length is longer than the other, append the rest of it's contents to the new string.

// eg: input array1: ["Hello", "My", "Friend"] array2: ["Darkness", "Old"]
//      output string: "Hello Darkness My Old Friend
