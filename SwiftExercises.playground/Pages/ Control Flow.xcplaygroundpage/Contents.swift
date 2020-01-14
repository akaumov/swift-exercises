// 5. Control Flow

//Notes

func getPower(value: Int, power: Int) -> Int {
    precondition(value >= 0)
    var result: Int = 1
    
    for _ in 0..<power {
        result *= value
    }
    
    return result
}

getPower(value: 2, power: 3)
getPower(value: 3, power: 1)
getPower(value: 3, power: 0)
//getPower(value: 4, power: -1)


func testCaseStatement(someVariable: Int) {
    switch someVariable {
    case 0...25:
        print("First")
    case 15...36:
        print("Second")
    case 37, 38:            //Multiple conditions in one case
        print("Third")
    case 45:
        print("45")
        fallthrough
    case 50:
        print("50")
    default:
        print("Default")
    }
}

print("Test case 1")
testCaseStatement(someVariable: 25)
print("\nTest case 2")
testCaseStatement(someVariable: 15)
print("\nTest case 3")
testCaseStatement(someVariable: 45)
print("\nTest case 4")
testCaseStatement(someVariable: 50)

func testCaseWithTuples(value: (Int, Int)) {
    switch value {
    case (0, 0):
        print("The point is in the center")
    case (0, let y):
        print("The point is on the y axis: \(y)")
    case (let x, 0):
        print("The point is  on the x axis \(x)")
    case let (x, y) where x > 0 && y > 0:
        print("The point is on the first quarter")
    case let (x, y) where x < 0 && y > 0:
        print("The point is on the second quarter")
    case let (x, y) where x < 0 && y < 0:
        print("The point is on the third quarter")
    case let (x, y) where x > 0 && y < 0:
        print("The point is on the fourth quarter")
    default:
        print("The default case")
    }
}

print("\n(0, 0)")
testCaseWithTuples(value: (0, 0))

print("\n(0, 10)")
testCaseWithTuples(value: (0, 10))

print("\n(10, 0)")
testCaseWithTuples(value: (10, 0))

print("\n(10, -1)")
testCaseWithTuples(value: (10, -1))


let x = Int.random(in: 0...Int.max)
//let x = 11
print("\nx = \(x)")
switch x {
case (let value)  where value > 10:
    print("First case \(value)")
case (let value) where value  < 10:
    print("Second case \(value)")
default:
    print("Third case \(x)")
}

// Exercises

// 5.1
print("\nExercise 5.1")
for value in 1...5 {
    print(value)
}

// 5.2
print("\nExercise 5.2")
for value in [1,2,3,4,5] {
    print(value)
}

// 5.3
print("\nExercise 5.3")
let values = [2, 6, 11, 19, 25]
for index in 0..<values.count {
    let value = values[index]
    print(value)
}


// 5.4
print("\nExercise 5.4")
for (index, value) in values.enumerated() {
    print("Index = \(index) value = \(value)")
}

// 5.5
print("\nExercise 5.5")

var counter = 0
while counter < 10 {
    counter += 1
}

print("The final value of the counter is \(counter)")

// 5.6
print("\nExercise 5.6")

counter = 0
repeat {
    counter += 1
} while counter < 10

print("The final value of the counter is \(counter)")

// 5.7
print("\nExercise 5.7")

func printTemperatureDescription(temperature: Int) {
    if temperature >= 30 {
        print("It's too hot")
    } else if temperature < 0 {
        print("It's too cold")
    } else {
        print("It's tolerable")
    }
}

printTemperatureDescription(temperature: 0)
printTemperatureDescription(temperature: 35)
printTemperatureDescription(temperature: -10)

// 5.8
print("\nExercise 5.8")
var stringValue = "1337"

if let numberValue = Int(stringValue), numberValue == 1337 {
    print("The value is 1337")
}

// 5.9
print("\nExercise 5.9")
let value: Int = 1337

switch value {
case 1337:
    print("elite")
case 42:
    print("the meaning of life")
default:
    print("some number")
}

// 5.10
print("\nExercise 5.10")

switch value {
case 42, 1337, 4711:
    print("a number we care about")
default:
    print("who cares")
}

// 5.11
print("\nExercise 5.11")
let animal: String = "tiger"

switch animal{
case "tiger":
    print("The animal is a tiger")
    fallthrough
case "cat":
    print("The animal is a cat")
default:
    print("The animal is some other type of animal")
}

// 5.12
print("\nExercise 5.12")

let distance: UInt = 10

switch distance {
case 0:
    print("Here")
case 1...4:
    print("Immediate vicinity")
case 5...15:
    print("Near")
case 16...40:
    print("Kind of far")
default:
    print("Far")
}

// 5.13
print("\nExercise 5.13")

let vector3D: (x: Int, y: Int, z: Int) = (x: 3, y: 2, z: 5)

switch vector3D {
case let (x, y, z) where z == 5 || x == 12:
    print(y)
default:
    break
}

// 5.14
print("\nExercise 5.14")

let vector3D2: (x: Int, y: Int, z: Int) = (x: 3, y: 2, z: 6)

switch vector3D2 {
case let (x, y , z) where z == y * 3:
    print(x)
default:
    break
}

// 5.15
print("\nExercise 5.15")

func printIfPositiveInteger(number: String) {
    guard let value = Int(number), value <= 0 else {
        return
    }
    
    print(value)
}

printIfPositiveInteger(number: "abc")
printIfPositiveInteger(number: "-10")
printIfPositiveInteger(number: "10")
