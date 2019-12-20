// Type properties

struct Point {
    var x: Int = 0
    var y: Int = 0
}

struct Map {
    static let origin = Point()
}

Map.origin

//Computed Properties

struct Size {
    var width: Int = 0
    var height: Int = 0
}

struct Rectangle {
    var origin = Point()
    var size = Size()
    
    var center: Point {
        get {
            let centerX = origin.x + size.width/2
            let centerY = origin.y + size.height/2
            
            return Point(x: centerX, y: centerY)
        }
        
        set (centerValue) {
            origin.x = centerValue.x - size.width/2
            origin.y = centerValue.y - size.width/2
        }
    }
}

var rect = Rectangle()
print(rect.center)
rect.size = Size(width: 20, height: 15)
print(rect.center)
rect.center = Point(x: 10, y: 15)
print(rect.center)
print(rect.origin)

let UIFontTextStyleHeadline = "UIFontTextStyleHeadline"
let UIFontTextStyleBody = "UIFontTextStyleBody"
let UIFontTextStyleFootnote = "UIFontTextStyleFootnote"

enum Text {
  case headline
  case body
  case footnote
  
var style: String {
    
    switch self {
    case .headline:
        return UIFontTextStyleHeadline
    case .body:
        return UIFontTextStyleBody
    case .footnote:
        return UIFontTextStyleFootnote
    }
    }
}

//Lazy stored properties

import Foundation

class ReadItLaterNetworkingClient {
    lazy var session: URLSession = URLSession(configuration: .default)
}

import UIKit
class TemperatureController: UIViewController {
    var temperature: Double = 0 {
        didSet {
            if temperature > 40 {
                view.backgroundColor = UIColor.red
            }
        }
        willSet {
            
        }
    }
    
    init(temperature: Double) {
        self.temperature = temperature
        super.init()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
}
