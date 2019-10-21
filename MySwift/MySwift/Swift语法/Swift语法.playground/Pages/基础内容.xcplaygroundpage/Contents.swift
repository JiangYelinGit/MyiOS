//: [Previous](@previous)
import UIKit

//元组
let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
statusCode
statusMessage

let (justTheStatusCode, _) = http404Error
justTheStatusCode


http404Error.0
http404Error.1

let http200Status = (statusCode: 404, statusMessage: "Not Found")

http200Status.statusCode
http200Status.statusMessage

//可选项
let possibleNumber = "123"
let convertNumber =  Int(possibleNumber)

print(convertNumber)

var number: Int? = 10
number = nil

var number1: Int?

//If 语句以及强制展开
if convertNumber != nil {
    print(convertNumber!)
}

//可选项绑定
if var n = convertNumber {
    print(n)
}

if let firstNumber = Int("12"), let secondNumber = Int("32"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
    
}

if let firstNumber = Int("12") {
    if let secondNumber = Int("32") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}

var assumedString: String! = "An implicitly unwrapped optional string."
var implicitString: String = assumedString // no need for an exclamation mark


assumedString = nil

if assumedString != nil {
    print(assumedString)
}

if let str = assumedString {
    print(str)
    
}


enum MyError: Error {
    case OutOfCleanDishes
    case MissingIngredients
}


//错误处理
func makeASandwich() throws {
    var isClean = false
    if isClean {
        
    } else {
        throw MyError.MissingIngredients
    }
}

func eatASandwich() {
    print("eat")
}

func washDishes() {
    print("wash")
}

func buyGroceries() {
    print("buy")
}
 
do {
    try makeASandwich()
    eatASandwich()
} catch MyError.OutOfCleanDishes {
    washDishes()
} catch MyError.MissingIngredients {
    buyGroceries()
}

//断言和先决条件
let age = -3



let threeMoreDoubleQuotationMarks = ###"dfa\###nsdfasd"###

var emptyString = ""
var emptyString1 = String()

if emptyString.isEmpty {
    print("empty")
}


print(threeMoreDoubleQuotationMarks)
//: [Next 基本运算符](@next)


















