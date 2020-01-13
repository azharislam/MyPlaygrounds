import UIKit

//Value Semantics
struct Point {
    var x: Double
    var y: Double
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
