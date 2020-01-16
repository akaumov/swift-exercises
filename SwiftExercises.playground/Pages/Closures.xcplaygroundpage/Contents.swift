// Closures

import Foundation

// Notes

let persons = ["Tim", "Robin", "Jack", "Adam"]

func ascendSort(value1: String, value2: String) -> Bool {
    return value1 < value2
}

func descendSort(value1: String, value2: String) -> Bool {
    return value1 > value2
}

persons.sorted(by: ascendSort)
persons.sorted(by: descendSort)

persons.sorted(by: <)
persons.sorted(by: >)

// Closures

// Full declaration
let sortedPersons1 = persons.sorted(by: { (value1: String, value2: String) -> Bool in
    value1 < value2
})

print(sortedPersons1)

// Succinct declaration
persons.sorted(by: {value1, value2 in return value1 < value2})

// Implicit return
persons.sorted(by: {value1, value2 in value1 < value2})

// Shorthand operands names
persons.sorted(by: { $0 < $1 })

// Trailing closure
persons.sorted() { $0 < $1 }

persons.sorted { $0 < $1 }


let digits = [
    0: "Zero",
    1: "One",
    2: "Two",
    3: "Three",
    4: "Four",
    5: "Five",
    6: "Six",
    7: "Seven",
    8: "Eight",
    9: "Nine"
]

let array1 = [12, 9, 18, 11, 25]
    
let stringArray = array1.map({ (number) -> String in
    var number = number
    var result = ""
    
    repeat {
        let digit = number % 10
        result = digits[digit]! + result
        number = number / 10
    } while number > 0
    
    return result
})

print(stringArray)


// Capturing Variables

func makeIncrementer(amount: Int) -> () -> Int {
    var runningAmount = 0
    func increment() -> Int {
        runningAmount += amount
        return runningAmount
    }
    
    return increment
}

var incrementer1 = makeIncrementer(amount: 2)
incrementer1()
incrementer1()

var incrementer2 = makeIncrementer(amount: 3)
incrementer2()
incrementer2()


// Escaping closures
var closures = [()-> Void]()


//Without @escaping directive throw compile time error
func functionWithEscapingClosure(closure: @escaping () -> Void) {
    closures.append(closure)
}

func printSomething() {
    print("Some value")
}

functionWithEscapingClosure {
    print("Escaping closure")
}

closures[0]()


// Autoclosures

var customersLine = ["Alex", "John", "Bruce", "Adam"]
print(customersLine.count)

// Execution of autoclosure was delayed
let customerProvider = {customersLine.remove(at: 0)}
print(customersLine.count)

print("Now serving: \(customerProvider())")
print(customersLine.count)

func serve(closure: @autoclosure () -> String) {
    print("Number of customers before serve \(customersLine.count)")
    print("Now serving: \(closure())")
    print("Number of customers before serve \(customersLine.count)")
}

serve(closure: customersLine.remove(at: 0))

// Exercises

// 7.1
var printStuff = {print("Stuff")}

printStuff()

// 7.2
var sum1 = {(value1: Int, value2: Int) -> Int in return value1 + value2}

sum1(1, 5)

var sum2: (Int, Int) -> Int = {$0 + $1}
sum2(1, 7)

var sum3: (Int, Int) -> Int = {a, b in a + b}
sum3(1, 7)

var sum4: (Int, Int) -> Int = (+)
sum4(3, 4)

// 7.3
_ = {1337}()

// 7.4
print({ $0 * $0 }(3))
print({x in x * x}(3))

// 7.5
let numbers = [16, 8, 15, 42, 4, 23]
numbers.sorted(by: {(a: Int, b: Int) -> Bool in
    return a > b
})

numbers.sorted { $0 < $1}
numbers.sorted(by: >)

// 7.6
func closureExecutor(closure: () -> Int) {
    print(closure())
}

closureExecutor(closure: { 5 })

// 7.7

func closureCreator() -> () -> Void {
    let stuff = "This is stuff"
    
    return {
        print(stuff)
    }
}

var closure1 = closureCreator()
closure1()
