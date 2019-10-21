//: [Previous](@previous)

import Foundation


//var squareCount = 25 //格子数量
//var currentSquare = 0//当前格子
//var random = 0//骰子
//

//var square = [Int](repeatElement(0, count: squareCount + 1))
//
//square[03] = +08; square[06] = +11; square[09] = +09; square[10] = +02;
//square[14] = -10; square[19] = -11; square[22] = -02; square[24] = -08;
//
//print("Start")
//while currentSquare < squareCount {//当当前格子大于总格子时结束
//
//    random += 1
//    if random == 7 {
//        random = 1
//    }
//    print("random = \(random)")
//
//    currentSquare += random
//    if currentSquare < squareCount {
//
//        currentSquare += square[currentSquare]
//        print("\(currentSquare)")
//    }
//}
//print("Game Over")
//
//let char: Character = "A"
//switch char {
//case "A", "a":
//    print("aaa")
//default:
//    print("other")
//}


//let score = 80
//
//switch score {
//case 0..<20:
//    print("a")
//case 20..<60:
//    print("b")
//case 60..<100:
//    print("c")
//default:
//    print("d")
//}
//
//let anotherPoint = (0, 1)
//switch anotherPoint {
//case let (x, y):
//    print("somewhere else at (\(x), \(y))")
//
//case (let x, 0):
//    print("on the x-axis with an x value of \(x)")
//case (0, let y):
//    print("on the y-axis with a y value of \(y)")
//}
//
//let yetAnotherPoint = (1, -1)
//switch yetAnotherPoint {
//case let (x, y) where x == y:
//    print("(\(x), \(y)) is on the line x == y")
//case let (x, y) where x == -y:
//    print("(\(x), \(y)) is on the line x == -y")
//case let (x, y):
//    print("(\(x), \(y)) is just some arbitrary point")
//}

let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
var square = 0
var diceRoll = 0

gameLoop: while square != finalSquare {
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    switch square + diceRoll {
    case finalSquare:
        // diceRoll will move us to the final square, so the game is over
        break gameLoop
    case let newSquare where newSquare > finalSquare:
        // diceRoll will move us beyond the final square, so roll again
        continue gameLoop
    default:
        // this is a valid move, so find out its effect
        square += diceRoll
        square += board[square]
    }
}
print("Game over!")


func greet(person: [String: String]) {
    
    guard let name = person["name"] else {
        return aa()
    }
    
    print("Hello \(name)!")
    
    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }
    
    print("I hope the weather is nice in \(location).")
}

func aa() {
    print("a")
}
 
greet(person: ["namse": "John"])
// Prints "Hello John!"
// Prints "I hope the weather is nice near you."
greet(person: ["name": "Jane", "location": "Cupertino"])


if #available(iOS 10, macOS 10, *) {
    print("statements to execute if the APIs are available")
} else {
    print("fallback statements to execute if the APIs are unavailable")
}


if #available(iOS 14, *) {
    print("10")
} else {
    print("n")
}
//: [Next](@next)
