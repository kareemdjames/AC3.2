//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Variable that can hold a closure

let add: (Int,Int) -> Int

//Assinging a closure to a variable

add = { (number1: Int, number2: Int) -> Int in
        return number1 + number2
}

add(2,3)

func operate(number1: Int, number2: Int, operation: (Int,Int) -> Int) -> Int {
    return operation(number1, number2)
}

operate(number1: 5, number2: 10, operation: add)

