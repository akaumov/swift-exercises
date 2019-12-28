
// Basic Operators

// Notes from reading the language guide:

// We can compare tuples! Two comparable tuples should have equalient number of items. The comparision begins from left to right, when one of the items is not equal than comparision stops

if (1, 2, 3) == (1, 2, 3) {
    print("The tuples are equal")
}

if (1, 2, 3) < (1, 3, 3) {
    print("The right tuple is bigger")
}

// Compile time error
//if (1, 2) < (1, 2, 3) {
//    print("Doesn't work because the tuples have different dimensions")
//}

// The Swift standard library can compare tuples with which size is smaller than 7 items
//if (1, 2, 3, 4, 5, 6, 7) == (1, 2, 3, 4, 5, 6, 7) {
//    print("Doesn't work. Compile time error")
//}

if (1, 2, 3, 4, 5, 6) == (1, 2, 3, 4, 5, 6) {
    print("Works")
}

let names = [
    "Peter",
    "Michel",
    "John"
]

for name in names[...2] {
    print(name)
}

for i in [...3] {
    print(i)
}

let range1 = 1...10
range1.contains(1)
range1.contains(10)
range1.contains(11)

let range2 = ...55
range2.contains(55)

let range3 = 55...
range3.contains(77)

for i in 1... {
    print(i)
    
    if i == 5 {
        break
    }
}

//Exercises

//2.1
// It wouldn't compile, because the assigment operator doesn't return any value

//var value = 17
//if value = 19 {
//    print("Whatever and stuff.")
//}

//2.2
//The value must have the Double type and equals to 3.5
let someValue = 2 * 3 + 4 - 6 / 2 + 9 % 4

//2.3
let hockeyPlayer = "Igor " + "Larionov"

//2.4
let string1 = "Some value"
let string2 = "Some value"
string1 == string2
string1 != string2


//2.5
(1, "zebra") < (2, "apple") // true
(2, "zebra") < (1, "apple") // false
(3, "apple") < (3, "bird") // true
(4, "dog") == (4, "dog") // true
(4, "dog") == (4, "cat") // false

//2.6
var leapYear = true
var year = leapYear ? 366 : 365

//2.7
var firstName: String? = nil
var lastName: String = "Jones"

var name: String = firstName ?? "Indiana"
name +=  " " + lastName
print(name)

//2.8
var amplifierRange = 0...11
amplifierRange.contains(0)
amplifierRange.contains(11)

//2.9
var amplifierRange2 = 0..<11
amplifierRange2.contains(0)
amplifierRange2.contains(10)
amplifierRange2.contains(11)
