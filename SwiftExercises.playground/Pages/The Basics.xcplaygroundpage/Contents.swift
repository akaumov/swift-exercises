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
