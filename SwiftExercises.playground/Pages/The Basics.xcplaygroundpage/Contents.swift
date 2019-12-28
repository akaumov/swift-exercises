//1. The Basics

//1.1
var currentTemperature = -11.1
print(currentTemperature)

currentTemperature = -14.5
print(currentTemperature)

//1.2
let numberOfSecondsInHour = 60 * 60
// numberOfSecondsInHour = 325 //Because constants can't be changed

//1.3
let number1: Int = 34
let number2: Int = 1

//1.4
let numberOfWheelsOfCar: Int
numberOfWheelsOfCar = 4

//Because a constant can be initialized before first use, it doesn't have to be initialized in the declaration statement

//1.5
let π = 3.14159

//1.6
var dog🐶 = "dog🐶"

//1.7
print(dog🐶)

//1.8
print(Int16.max)

//1.9
//The value of the constant is Double. Because the compiler always infers floating point values as Double values

let pi = 3 + 0.14159
print(type(of: pi))

//1.10
//The code will throw compile time exception, because UInt doesn't support negative values

//let myNumber: UInt = -17

//1.11
// It should overflow. Because Int16.max value is smaller than 32767 + 1

//let bigNumber: Int16 = 32767 + 1

//1.12
let pi2 = 3.14159
let approximatePi: Int = Int(pi2)

//1.13
let valueA: Int16 = -0x8000
let valueB: Int16 = 0x4000 << 1

print(valueA == valueB)
print("valueA = \(valueA) valueB = \(valueB)")

//1.14
//Single line
/*
 * Multiline
 * comment
 */

//1.15
/*
* /* Nested multiline comment*/
*/

//1.16
let player = (number: 10, name: "Ovechkin")

//1.17
// By using decomposition
let (number, name) = player

// By using indexes
player.0
player.1

// By using labels
player.name
player.number

print("Hockey player number: \(number), name: \(name)")

//1.18
let optionalConstant: Int?
optionalConstant = 35


//1.19
let value: Int? = 17

// We have to use implicitly unwrapping optionals
let banana1: Int! = value

// Or optional binding
if let banana: Int = value {
    print(banana)
}

// Or forced unwrapping
let banana2: Int = value!

//1.20
// Compile time error
let value1: Int? = nil
//let banana3: Int  = value1!


// Experiment
//let someNilValue = nil // nil value requires explicit type declaration
//print(type(of: someNilValue))

//1.21
// Hehe. Old answer. Because the "value" is constant, than I think it is better to use implicitly unwrapping optionals

let banana4: Int! = value

