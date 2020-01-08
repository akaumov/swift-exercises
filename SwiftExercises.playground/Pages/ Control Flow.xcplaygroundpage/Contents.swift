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
