//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

func a() -> () {
    let b = "a"
    
    func c()->() {
        print(b)
    }
    
    c()
}

a()

var name = ["a", "b"]




func compare(_ a: String, _ b: String) -> Bool {
    a > b
}

func compare1() {
    
}

//闭包表达式语法
let aaaa = name.sorted(by: {(a, b) -> Bool in return a < b })
//从语境中推断类型
let bbbb = name.sorted(by: {a, b in return a > b })
//从单表达式闭包隐式返回
let cccc = name.sorted(by: {a, b in a > b })
//简写的实际参数名
let dddd = name.sorted(by: { $0 > $1 })
//运算符函数
let eeee = name.sorted(by: >)


aaaa
bbbb
cccc


func run(x: Int, y: Int, a: (Int, Int) -> String) {
    print(a(x,y))
}
run(x: 1, y: 2) {("\($0)" + "\($1)")}


//run {("\($0)" + "\($1)")}

//func someFunctionThatTakesAClosure(closure:() -> Void){
//     //function body goes here
//}
//
//someFunctionThatTakesAClosure({
//      //closure's body goes here
// })

let names = ["jyl", "lzx"]

let tmpNames = names.map { $0 + "!"
}

tmpNames





extension Array {
    func myMap<T>(_ arr:(_ param: T) -> T) -> Array<T> {
        var result = [T]()
        for item in self {
            result.append(arr(item as! T))
        }
        return result
    }
}

let asss = names.myMap { (a:String) -> String in
    a + "1"
}


func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let asdfd = makeIncrementer(forIncrement: 2)

asdfd()
asdfd()
asdfd()

func aa() {
    var x = "a"
    
    func bb() {
        var y = "a"
        func cc() {
            x + y
            
        }
    }
}

var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}

func someFunctionWithNonescapingClosure(closure: () -> Void) {
    closure()
}

class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure { self.x = 100 }
        someFunctionWithNonescapingClosure { self.x = 200 }
    }
}
let instance = SomeClass()
instance.doSomething()
print(instance.x)
// Prints "200"
 
completionHandlers.first?()
print(instance.x)
// Prints "100"

//: [Next](@next)
