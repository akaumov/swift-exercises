// 3. Strings and Characters

print(#"Line 1\n\tLine 2"#)
print("")
print(#"Line 1\#nLine 2"#)
print("")
print( ###"Line1\###nLine2"###)

var someString = ""

if someString.isEmpty {
    print("Empty")
}

let someString1 = "Some string"

for i in someString1.indices {
    print(someString1[i])
}

var someString2 = "New Year"
someString2.insert(" ", at: someString2.startIndex)
someString2.insert(contentsOf: "Happy", at: someString2.startIndex)
someString2.insert("!", at: someString2.endIndex)


let dogString = "Dog‼🐶"

print("utf8")
for codeUnit in dogString.utf8 {
    print(codeUnit, terminator: " ")
}


print("\nutf16")
for codeUnit in dogString.utf16 {
    print(codeUnit, terminator: " ")
}

print("\nutf8cstring")
for codeUnit in dogString.utf8CString {
    print(codeUnit, terminator: " ")
}


//Exercises

//3.1
let city: String = "Detroit"
var color = "Red"
let wings = "Wings"

let hockeyTeamConcatenation = city + " " + color + " "  + wings
let hockeyTeamInterpolation = "\(city) \(color) \(wings)"

//3.2
var length = "4, 8, 15, 16, 23, 43".count //? what's the difference with .count

//3.3
var variableString = "Detroit"
variableString  += " Red Wings"
