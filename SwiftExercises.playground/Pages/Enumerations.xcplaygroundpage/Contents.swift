// Enumerations

// Notes

enum CompassDirections {
    case South
    case North
    case West
    case East
}

var direction: CompassDirections
direction = CompassDirections.North
direction = .South

enum KeyCapProfiles: CaseIterable {
    case DSA
    case MDA
    case OEM
    case Cherry
    case SA
}

for profile in KeyCapProfiles.allCases {
    print(profile)
}

// Associated values

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)
productBarcode = .qrCode("SOME VALUE")


switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC bar code: \(numberSystem), \(manufacturer), \(product), \(check)")
case .qrCode(let value):
    print("QR code: \(value)")
default:
    print("Unknown barcode type")
}

// RAW values

enum Digits: Int {
    case one = 1, two, three, four, five, six, seven, eight, nine
}

Digits.one.rawValue

var digit = Digits(rawValue: 9)


// Recursive enumerations

enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplicatioin(ArithmeticExpression, ArithmeticExpression)
}

indirect enum ArithmeticExpression2 {
    case number(Int)
    case addition(ArithmeticExpression2, ArithmeticExpression2)
    case multiplicatioin(ArithmeticExpression2, ArithmeticExpression2)
}

//( 5 + 4) * 2
let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let two = ArithmeticExpression.number(2)
let leftExpression = ArithmeticExpression.addition(five, four)
let expression = ArithmeticExpression.multiplicatioin(leftExpression, two)


func evaluate(_ exp: ArithmeticExpression) -> Int {
    switch exp {
    case let .number(value):
        return value
    case let .addition(exp1, exp2):
        return evaluate(exp1) + evaluate(exp2)
    case .multiplicatioin(let exp1, let exp2):
        return evaluate(exp1) * evaluate(exp2)
    }
}

evaluate(expression)
