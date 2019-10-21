//: [Previous](@previous)

import Foundation

struct Resolution {
    var width = 0
    var height = 0
}
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

var resolution = Resolution(width: 20, height: 30)
var resolution_ = resolution

var videoModel = VideoMode()
var videoModel_ = videoModel

//resolution == resolution_
//videoModel == videoModel_


struct Test {
    var width = 0
    var height = 0
    var video = VideoMode()
}

Test(width: 10)
var test = Test(video: VideoMode())
var test1 = test

print(test)
print(test1)


test.video.interlaced = true
test1.video.interlaced


test.video === test1.video

test.height = 100
test1.height
test.height


//: [Next](@next)
