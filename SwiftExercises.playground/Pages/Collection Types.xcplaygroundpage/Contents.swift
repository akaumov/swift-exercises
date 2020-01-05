// 4. Collection Types

// There are 3 types of collections in Swift: set, array, dictionary

let emptyArray1 = [Int]()
let emptyArray2 = Array<Int>()
let emptyArray3: [Int] = []

let arrayWithDefaultValues = Array(repeating: 8, count: 3)

// We can create a new array from two existing arrays (merge them)
let mergedArray = [1, 2, 3] + [4, 5, 6]

var testArray1 = [1, 2, 3]

testArray1[0...2]
testArray1[0...1]  = [5, 6]
print(testArray1)

testArray1.endIndex
testArray1.startIndex
testArray1.count

testArray1.removeLast()
testArray1.capacity

// Array

// 4.1
var array1:[Int] = []
var array2 = [Int]()
var array3 = Array<Int>()
var array4: Array<Int> = []

// 4.2
var array11:[Int] = [4, 8, 15, 16, 23, 42]
var array12 = [4, 8, 15, 16, 23, 42]
var array13 = Array<Int>(arrayLiteral: 4, 8, 15, 16, 23, 42)
var array:Array<Int> = [4, 8, 15, 16, 23, 42]
 
// 4.3
let constantArray = [4, 7, 15, 16, 23, 42]

// 4.4
var stuff = [4, 8, 15, 16, 23, 42]
stuff += [1138, 1337, 4711]

// 4.5
var numbers = [4, 8, 15, 16, 23, 42]
if let numberIndex = numbers.firstIndex(of: 15) {
    numbers[numberIndex] = 17
}

print(numbers)

// 4.6
var numbers2 = [4, 8, 15, 16, 23, 42]
numbers2[2...4] = [1, 2, 3, 4, 5]
print(numbers2)

// 4.7
var sheepsArray = Array<String>(repeating: "🐑", count: 10)
print(sheepsArray)

// 4.8
var numberArray3 = [1, 3, 4, 5, 6 , 7]
numberArray3.removeLast()
print(numberArray3)

if !numberArray3.isEmpty {
    numberArray3.remove(at: numberArray3.endIndex - 1)
}
print(numberArray3)

// Set
// 4.9

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
farmAnimals.isDisjoint(with: cityAnimals)
var notHouseAnimals = Set(farmAnimals)
notHouseAnimals.subtract(houseAnimals)

var allAnimals = houseAnimals.union(farmAnimals).union(cityAnimals)

// Dictionary

// 4.10
var dict1 = [String: Int]()
var dict2: [String: Int] = [:]
var dict3: Dictionary<String, Int> = [:]
var dict4 = Dictionary<String, Int>()

// 4.11
var secretIndentities = [
    "Hulk": "Bruce Banner",
    "Batman": "Bruce Wayne",
    "Superman": "Clark Kent",
]

// 4.12
print(secretIndentities["Batman"] ?? "")

// 4.13
secretIndentities["Hulk"] = "David Banner"

// 4.14
for (hero, realName) in secretIndentities {
    print("\(hero) -> \(realName)")
}
