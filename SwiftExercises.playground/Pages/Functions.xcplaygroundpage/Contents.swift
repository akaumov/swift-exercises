// Functions
import Foundation

// Notes

func minMax(values: [Int]) throws -> (min: Int, max: Int)? {
    
    guard !values.isEmpty else {
        return nil
    }
    
    var min: Int = values[0]
    var max: Int = values[0]
    
    for value in values {
        if min > value {
            min = value
        }
        
        if max < value {
            max = value
        }
    }
    
    return (min, max)
}

minMax(values: [-1, 2, 3, 0, 5])


// Implicit return
func greeting1(person: String) -> String {
    "Hello \(person)!"
}

greeting1(person: "John")

// A function with implicitly returning value should contain only one string
//func calcValue(inputValue: Int) -> Int {
//    var multipler = 4
//    var result = multipler * inputValue
//    result
//}
//
//print(calcValue(5))

// Functions with default parameters

func greetPerson(person: String = "guest") {
    print("Hello \(person)")
}

greetPerson()
greetPerson(person: "Michle")


//Variadic parameters

func arithmeticMean(_ values: Double...) -> Double? {
    guard !values.isEmpty else {
        return nil
    }
    
    var result: Double = 0
    
    for value in values {
        result += value
    }
    
    result /= Double(values.count)
    return result
}

arithmeticMean(1, 2, 3, 4, 5, 1)

// Inout parameters

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temp = b
    b = a
    a = temp
}

var value1 = 1
var value2 = 2

swapTwoInts(&value1, &value2)
print("value1 = \(value1) value2 = \(value2)")

// Exercises

// 6.1
func printHelloWorld() {
    print("Hello world!")
}

printHelloWorld()

// 6.2
func greet(person: String) {
    print("Hello, \(person)!")
}

greet(person: "Leonardo Davinchi")

// 6.3
func greeting(person: String) -> String {
    return "Hello, \(person)!"
}

print(greeting(person: "Enstein"))

// 6.4
func greet(firstName: String, lastName: String) {
    print("Hello, \(firstName) \(lastName)!")
}

greet(firstName: "Adam", lastName: "Turing")

// 6.5
func split(name: String) -> (firstName: String, lastName: String) {
    
    let components = name.components(separatedBy: " ")
    var firstName = ""
    var lastName = ""
    
    if components.count > 0 {
        firstName = components[0]
    }
    
    if components.count > 1 {
        lastName = components[1]
    }
    
    return (firstName, lastName)
}

split(name: "Adam Turing")

// 6.6
func square(_ value: Int) -> Int {
    return value * value
}

square(3)

// 6.7
func whoAmI(name: String = "Bruce Wayne") -> String {
    if name == "Bruce Wayne" {
        return "I am Batman!"
    }
    
    return "I am not Batman"
}

whoAmI()

// 6.8
func sum(_ values: Int...) -> Int {
    var result = 0
    
    for value in values {
        result += value
    }
    
    return result
}

sum(1, 2, 3, 4)
