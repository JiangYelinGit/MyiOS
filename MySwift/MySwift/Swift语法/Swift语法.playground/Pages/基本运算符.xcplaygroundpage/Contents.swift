//: [Previous 基础内容](@previous)

import Foundation

//赋值运算符
let b = 10
var c = 100
c = 10

let (x, y) = (10, 11)
x
y

if x == y {
    
}

let aa: Int? = nil
let bb = 200

//合并空值运算符
aa ?? bb

//区间运算符
for index in 1..<5 {
    print("\(index)")
}


let names = ["jyl", "lzx", "jhg", "mle"]
for i in 0..<names.count {
    print("\(names[i])")
}

//单侧区间
for name in names[2...3] {
    print("\(name)")
}

for name in names[...2] {
    print("\(name)")
    
}

let name = "jyl"
for c in name {
    print("\(c)")
}

let range = ...5
range.contains(9)
range.contains(-10000000)



//: [Next](@next)
