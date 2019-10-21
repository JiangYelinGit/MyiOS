//: [Previous](@previous)

import Foundation

enum CompassPoint {
    case north
    case south
    case east
    case west
    
    func description() {
        switch self {
        case .north:
            
            print("north")
        default:
            print("other")
        }
    }
}

var a = CompassPoint.north
a.description()

enum Planet:String, CaseIterable {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

Planet.mercury.rawValue
Planet.venus.rawValue

let aaa = Planet(rawValue: "venuss")

print(aaa)

let numbers = Planet.allCases.count

for item in Planet.allCases {
    print(item)
}

enum BarCode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}


let productBarCode1 = BarCode.upc(1, 12, 2323, 121)
let productBarCode2 = BarCode.qrCode("abcdef")

switch productBarCode2 {
case let .upc(x, y, z, s):
    print("\(x)  \(y) \(z) \(s)")
case .qrCode(let str):
    print("\(str)")
    
}


enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

ASCIIControlCharacter.tab.rawValue





//: [Next](@next)
