// Snakes and Ladders

let snakes = [
    (head: 14, tail: 4),
    (head: 19, tail: 8),
    (head: 22, tail: 20),
    (head: 24, tail: 16)
]

let ladders = [
    (bottom: 3, top: 11),
    (bottom: 6, top: 17),
    (bottom: 10, top: 12),
    (bottom: 9, top: 18)
]

let lastCellNumber = 25

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

func createGamers(_ numberOfGamers: Int) -> [String: Int] {
    
    var gamers = [String: Int]()
    
    for gamerNumber in 1...numberOfGamers {
        let gamerId = "Gamer \(gamerNumber)"
        gamers[gamerId] = 0
    }
    
    return gamers
}

func moveGamerToNexPosition(gamers: inout [String:Int], gamerId: String)  {
    
    let currentPosition = gamers[gamerId]!
    let diceValue = rollDice()
    print("  Position: \(currentPosition)")
    print("  Dice: \(diceValue)")
    let nextPosition = currentPosition + diceValue
    
    for (headPosition, tailPosition) in snakes {
        if nextPosition == headPosition {
            print("  Snake head at: \(headPosition) move to: \(tailPosition)\n")
            gamers[gamerId] = tailPosition
            return
        }
    }
    
    for (bottomPosition, topPosition) in ladders {
        if nextPosition == bottomPosition {
            print("  Ladder at: \(bottomPosition) move to: \(topPosition)\n")
            gamers[gamerId] = topPosition
            return
        }
    }
    
    print("  Move to: \(nextPosition)\n")
    gamers[gamerId] = nextPosition
}

func playGame(numberOfGamers: Int) {

    var gamers = createGamers(numberOfGamers)
    let gamersIds = gamers.keys.sorted()
    
    print("Start the game")
    print("Gamers: \(gamersIds)")
    print("\n🏁🏁🏁🏁🏁🏁🏁🏁🏁🏁\n")
    
    while true {
        for gamerId in gamersIds {
            print(gamerId)
            moveGamerToNexPosition(gamers: &gamers, gamerId: gamerId)
            
            let currentPosition = gamers[gamerId]!
            if currentPosition > lastCellNumber {
                print("\n🏁🏁🏁🏁🏁🏁🏁🏁🏁🏁")
                print("🥇 \(gamerId) is the winner!")
                
                return
            }
        }
    }
}

playGame(numberOfGamers: 3)
