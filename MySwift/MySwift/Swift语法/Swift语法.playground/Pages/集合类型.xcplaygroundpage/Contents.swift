//: [Previous](@previous)

import Foundation

//Array
var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count) items.")

someInts.append(3)

someInts = []

var arr:[Int] = []

//
var threeDoubles = Array(repeating: 0.0, count: 3)
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
var sixDoubles = threeDoubles + anotherThreeDoubles
var shoppingList: [String] = ["Eggs", "Milk"]
shoppingList.append("ss")
shoppingList.remove(at: 2)

shoppingList += ["aa", "bb"]
shoppingList[0] = "aaa"

shoppingList[1...2] = ["zz"]

for (value, index) in shoppingList.enumerated() {
    print("\(index) \(value)")
    
}

shoppingList
shoppingList = []

shoppingList.count
shoppingList.insert("aa", at: 0)

var aaa = 2
var bbb = 2

aaa == bbb

aaa.hashValue
bbb.hashValue

var set = Set<String>()
set.insert("aaa")
set.insert("bbb")
set

var set1 = Set<MyClass>()

class MyClass: Hashable, Equatable {
    var name:String
    
    init(name: String) {
        self.name = name
    }
    
    static func == (lhs: MyClass, rhs: MyClass) -> Bool {
        
        if lhs.name == rhs.name {
            return true
        }
        return false
    }
    
    func hash(into hasher: inout Hasher) {
        
    }
    
    var hashValue: Int {
        return 10
    }
}

var myClass1: MyClass = MyClass(name: "jyl")
var myClass2: MyClass = MyClass(name: "jyl")

//myClass1.name = "lzx"
//myClass2.name = "yl"

set1.insert(myClass1)
set1.insert(myClass2)

for item in set1 {
    print(item.name)
}

set1 = []


let set2:Set = ["aaa", "ddd", "bbb", "ccc"]
set2.count

for item in set2.sorted() {
    print(item)
}


var dic:Dictionary<String,Int> = ["a": 1, "b": 2]
var dic1 = [Int: String]()
dic1[1] = "a"
dic1[2] = "b"
dic1 = [:]

var dic2:Dictionary<Int,Int> = [:]

var dic3 = ["a": 1, "b": 2]

if let v = dic3.updateValue(3, forKey: "c") {
    print(v)
}


for (key, value) in dic3 {
    print("\(key)")
}

for item in dic3.keys {
    print(item)
}

let keys1 = [String](dic3.keys)
print(keys1)


//: [Next](@next)
