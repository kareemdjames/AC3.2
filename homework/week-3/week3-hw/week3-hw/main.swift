//
//  main.swift
//  week3-hw

import Foundation

func Calc() {
    enum Operator: String {
        case Add = "+"
        case Subtract = "-"
        case Multiply = "*"
        case Divide = "/"
        case Random = "?"
    }
    // creates a random operator for guess the operator game
    
    func operatorRandomizer(x x: Double, y: Double) -> Double {
        let rand = Double(arc4random_uniform(4))
        switch rand {
        case 0:
            return x + y
        case 1:
            return x - y
        case 2:
            return x * y
        case 3:
            return x / y
        default:
            return x + y
        }
    }
    
    func startGame(x: Double, y: Double, z: Double) {
        var match = true
        while match == true {
            
            print("Guess which operator was used: ", terminator: " ")
            
            if let response = readLine(stripNewline: true) {
                let guess = String(response)
                switch guess {
                case "+":
                    if x + y == z {
                        print("\(guess) is correct")
                        match = false
                    }
                    else {
                        print("Your guess of \(guess) is incorrect, please try again")
                    }
                    
                case "-":
                    if x - y == z {
                        print("\(guess) is correct")
                        match = false
                    }
                    else {
                        print("Your guess of \(guess) is incorrect, please try again")
                    }
                    
                case "*":
                    if x * y == z {
                        print("\(guess) is correct")
                        match = false
                    }
                    else {
                        print("Your guess of \(guess) is incorrect, please try again")
                    }
                    
                case "/":
                    if x / y == z {
                        print("\(guess) is correct")
                        match = false
                    }
                    else {
                        print("Your guess of \(guess) is incorrect, please try again")
                    }
                default:
                    print("Please enter an operator")
                    
                }
            }
        }
    }
    
    
    
    //func userInputReceived() -> String? {
    //    let s = readLine(stripNewline: true)
    //    return s
    //}
    
    /*
 func mathStuffFactory(opString: String) -> (Double, Double) -> Double {
 if let op = Operator(rawValue: opString) {
 switch op {
 case .Add:
    return {x, y in x + y}
 case .Subtract:
    return {x,y in x - y}
 case .Multiply:
    return {x, y in x * y}
 case .Divide:
    return {x, y in x / y}
 case .Random:
    return {x, y in x + y}
        }
    }
    return {x, y in x + y}
 }
 
 var add = mathStuffFactory(Operator.Add.rawValue)
 var subtract = mathStuffFactory(Operator.Subtract.rawValue)
 var multiply = mathStuffFactor(Operator.Multiply.rawValue)
 var divide = mathStuffFactory(Operator.Divide.rawValue)
 
 */
    
    
    
    
    
    
    
    func mathStuffFactory(opString: String) -> (Double, Double) -> Double {
        switch opString {
        case "+":
            return {x, y in x + y }
        case "-":
            return {x, y in x - y }
        case "*":
            return {x, y in x * y }
        case "/":
            return {x, y in x / y }
        case "?":
            return {x, y in operatorRandomizer(x: x, y: y)}
        default:
            return {x, y in x + y }
        }
    }
    
    func processCommand(userInput: [String]) {
        if userInput.count < 3 {
            print("Please enter an operator and two operands")
        }
        if let command = Operator(rawValue: userInput[1]), operand1 = Double(userInput[0]), operand2 = Double(userInput[2]) {
            switch command {
            case .Add:
                let add = mathStuffFactory("+")
                print("\(operand1) + \(operand2) = \(add(operand1, operand2))")
            case .Subtract:
                let subtract = mathStuffFactory("-")
                print("\(operand1) - \(operand2) = \(subtract(operand1, operand2))")
            case .Multiply:
                let multiply = mathStuffFactory("*")
                print("\(operand1) * \(operand2) = \(multiply(operand1, operand2))")
            case .Divide:
                let divide = mathStuffFactory("/")
                print("\(operand1) / \(operand2) = \(divide(operand1, operand2))")
            case .Random:
                let random = mathStuffFactory("?")
                let randomAnswer = random(operand1, operand2)
                print("\(randomAnswer)")
                startGame(operand1, y:operand2, z:randomAnswer)
            }
        }
        else {
            print("Error")
        }
    }
    
    
    while true {
        print("I am a simple calculator, please enter an equation and I will solve it: ", terminator: "")
        
        if let response = readLine(stripNewline: true) {
            if response == "exit" {
                break
            }
            
            let command = response.componentsSeparatedByString(" ")
            processCommand(command)
        }
    }
}


func myFilter(inputArray: [Int], filter: (Int) -> Bool) -> [Int] {
    
    var filteredArray = [Int]()
    
    for num in inputArray {
        if filter(num) {
            filteredArray.append(num)
        }
    }
    return filteredArray
}


func Filter() {
    while true {
        print("Please enter some numbers separated by a space and I will filter out the even numbers: ", terminator: "")
        
        if let response = readLine(stripNewline: true) {
            if response == "exit" {
                break
            }
            
            var userInput = [Int]()
            
            let command = response.componentsSeparatedByString(" ")
            
            for str in command {
                if let num = Int(str) {
                    userInput.append(num)
                    
                    myFilter(userInput, filter: {(a) -> Bool in a % 2 == 0})
                }
            }
            
        }
        
    }
    
}


func myMap(inputArray: [Int], filter: (Int) -> (Int)) -> [Int] {
    var mappedArray = [Int]()
    
    for num in inputArray {
        mappedArray.append(filter(num))
        }
    return mappedArray
}

func Map() {
    while true {
        print("Please enter some numbers separated by a space and I will multiply them by the amount of your choice: ", terminator: " ")
        
        if let response = readLine(stripNewline: true) {
            if response == "exit" {
                break
            }
            
            var userInput = [Int]()
            let command = response.componentsSeparatedByString(" ")
            
            
            for str in command {
                if let num = Int(str) {
                    userInput.append(num)
                }
            }
            print("Please enter a number you would like to multiply by: ", terminator: " ")
            
            if let response = readLine(stripNewline: true) {
                let x = Int(response)!
                
                let y = myMap(userInput, filter: { (a) -> Int in a * x})
                
                print(y)
                
            }
        }
    }
}


while true {
    print("You can choose between a Calculator, Map, or Filter. What would you like to do? ", terminator: " ")
    
    if let response = readLine(stripNewline: true) {
        if response == "exit" {
            break
        }
        
        switch response {
        case "Calculator":
            Calc()
        case "Map":
            Map()
        case "Filter":
            Filter()
        default:
            print("Please put an acceptable answer")
        }
    }
}