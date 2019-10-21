//: [Previous](@previous)

import Foundation

struct FiexdLengthRange {
    var firstValue: Int
    let length: Int
}

var rangeOfThreeItems = FiexdLengthRange(firstValue: 0, length: 3)
rangeOfThreeItems.firstValue = 6


class DataImporter {
    var fileName = "data.txt"
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
}

let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")

struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            Point(x: origin.x + (size.width / 2),
                  y: origin.y + (size.height / 2))
        }
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}

var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10, height: 10))
let initialSquareCenter = square.center
square.center = Point(x: 15.0, y: 15)
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")


var time: Int = 2{
    
    
    willSet {
        print(newValue)
    }
    
    didSet {
        print(oldValue)
    }
}

//time = 23232

class StepCounter {
    var totalSteps: Int = 0 {
        willSet {
            print("About to set totalSteps to \(newValue)")
        }
        didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
            print("a")
        }
    }
    
}

func setTotalStep(totalSteps: inout Int) {
//    totalSteps = 300
}


let stepCounter = StepCounter()


setTotalStep(totalSteps: &stepCounter.totalSteps)




//stepCounter.totalSteps = 200
//
//// About to set totalSteps to 200
//// Added 200 steps
//stepCounter.totalSteps = 360
//// About to set totalSteps to 360
//// Added 160 steps
//stepCounter.totalSteps = 896
//// About to set totalSteps to 896
//// Added 536 steps


struct SomeStructure {
    static var storedTypeProperty = "some value."
    static var computedTypeProperty: Int {
        return 1
    }
}


enum SomeEnumeration {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 6
    }
}
class SomeClass {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 27
    }
    class var overrideableComputedTypeProperty: Int {
        return 107
    }
}

class SubSomeClass: SomeClass {
    class override var overrideableComputedTypeProperty: Int {
        return 20
    }
    
}


let subSomeClass = SubSomeClass()
SubSomeClass.overrideableComputedTypeProperty

SubSomeClass.computedTypeProperty



//: [Next](@next)
