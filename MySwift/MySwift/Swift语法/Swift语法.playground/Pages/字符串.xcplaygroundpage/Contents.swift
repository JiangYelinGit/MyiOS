//: [Previous](@previous)

import Foundation
import UIKit

var str = "Hello, playground"
var catCharacters: [Character] = ["C", "a", "t"]
var catString = String(catCharacters)



let badStart = """
one
two
"""
let end = """
three
"""
print(badStart + end)

let goodStart = """
one
two

"""
print(goodStart + end)

//字符串插值
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
print("6 times 7 is \(6 * 7).")


let eAcute: Character = "\u{E9}" // é
let combinedEAcute: Character = "\u{65}\u{301}" // e followed by

let precomposed: Character = "\u{D55C}" // 한
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}" // ᄒ, ᅡ, ᆫ

let unusualMenagerie = "Koala 🐨"
print("unusualMenagerie has \(unusualMenagerie.count) characters")


var word = "cafe"
print("the number of characters in \(word) is \(word.count)")
// Prints "the number of characters in cafe is 4"
 
word += "\u{301}"    // COMBINING ACUTE ACCENT, U+0301
 
print("the number of characters in \(word) is \(word.count)")


//字符串索引
let greeting:String = "Guten Tag!"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(greeting.startIndex, offsetBy: 3)]
greeting[greeting.index(greeting.startIndex, offsetBy: 3, limitedBy: greeting.index(before: greeting.endIndex))!]



for index in greeting.indices {
    print("\(greeting[index])", terminator: "")
}

var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)
welcome.insert(contentsOf: "hi,", at: welcome.startIndex)

welcome.remove(at: welcome.startIndex)
welcome


let range = welcome.startIndex..<welcome.index(welcome.endIndex, offsetBy: -3)
welcome.removeSubrange(range)

let string1 = "hello,world"

let index = string1.firstIndex(of: ",") ?? string1.endIndex

let subString1 = string1[..<index]

let newString1 = String(subString1)

let latinCapitalLetterA: Character = "\u{41}"
 
let cyrillicCapitalLetterA: Character = "\u{0410}"
 
if latinCapitalLetterA != cyrillicCapitalLetterA {
    print("These two characters are not equivalent")
}


let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]
var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1 ") {
        act1SceneCount += 1
    }
}
print("There are \(act1SceneCount) scenes in Act 1")

var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        mansionCount += 1
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        cellCount += 1
    }
}
print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")

let string2 = "Act 1 Scene 1: Verona, A public place"





//: [Next](@next)
