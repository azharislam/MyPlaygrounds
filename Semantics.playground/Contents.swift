import UIKit

//Value Semantics
struct Point {
    var x: Double
    var y: Double
    
    //this is a value type but this method is trying to mutate it
    mutating func moveLeft(steps: Double) {
        x -= steps
    }
}

var p1 = Point(x: 1, y: 2)
var p2 = p1

p1.x = 4
p2.x

let p3 = Point(x: 2, y: 4) //immutable

struct AnotherPoint {
    let x: Double
    let y: Double
}

var p4 = AnotherPoint(x: 1, y: 2) //can change whole p4

p4 = AnotherPoint(x: 12, y: 1)

//Reference Semantics

class Robot {
    var model: String
    
    init(model: String) {
        self.model = model
    }
}

var someRobot = Robot(model: "T1999")
var anotherRobot = someRobot

someRobot.model = "T2000"
anotherRobot.model

let thirdRobot = Robot(model: "T3000") //can change properties in the same object, just can't change object
thirdRobot.model = "T4000"
