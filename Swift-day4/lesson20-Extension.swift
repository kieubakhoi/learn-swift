import Foundation

//About Extensions 
// Extensions in swift  = Objective - C + do not have names
// Extensions in swift  = add more methods or computer properties without inheritance
extension Double {
    var meter: Double{
        return self
    }
    var kilometer: Double{
        return self * 1000.0
    }
    var centimeter: Double{
        return self / 100.0
    }
    var minimeter: Double{
        return self / 1000.0
    }
}
let aDistance = 42.0.kilometer + 182.0.meter + 2342.0.centimeter + 3821.0.minimeter
print("This distance is: \(aDistance.meter) meters")

// Extend initializers
struct Point{
    var x: Double
    var y:Double

}
extension Point{
    init (xValue: Double, yValue: Double){       //   add method init with extension
        self.x = xValue
        self.y = yValue
    }
}
// let myPoint = Point(xValue: 20.3, yValue: 21.1)
// print("My point: \(myPoint)")

// extension UIColor{
//     static func rgba(_ red: GGFloat, _  green: GGFloat, _  blue: GGFloat, _  aplha: GGFloat) -> UIColor {
//         return UIColor(red: red / 255.0, green: green / 255.0, blue: blue / 255.0, alpha: alpha)
//     }
// }

// let myColor = UIColor.rgba(red: 142, green:135, blue: 89, alpha: 1) // way 1
// let myColor = UIColor.rgba(45, 56, 114, 1)                             // way 2
// print("myColor: \(myColor)")

struct Rectangle {
    var width, height: Double
}
//Extend an instance method
extension Rectangle{
    func calculateArea() -> Double {
        return self.width * self.height     
    }
}
let rectangle = Rectangle(width: 180, height: 230)
print("calculateArea: \(rectangle.calculateArea())")

// Extence mutating Instance methods
extension Double {
    mutating func square() {
        return  self = self * self  // mutating method = method change "self"
    }
}
var someDouble = 123.6
print(someDouble.square())   // need to make method return , esle return "()"
