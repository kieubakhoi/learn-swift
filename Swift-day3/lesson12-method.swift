import Foundation

//About method

class Person {
    var height:Float = 0.0
    var weight:Float = 0.0
    var body: String = "No data"

    func grown(height : Float, weight: Float) {
        self.height = height
        self.weight = weight
        if( height > 170 && weight > 60){       // If esle to set value for body
            self.body = "Good"
        }
        else{
            self.body = "Bad"           
        }
    }
    func setNewTitle(height: Float, weight: Float) -> Person {              // make new Object and return this
        let  newPerson = Person()
        newPerson.grown(height: height, weight: weight)
        return newPerson
    }
    func toString() -> String {
        return "height: \(self.height), weight: \(self.weight), title: \(self.body) " 
    }
}
var body1 = Person()
body1.grown(height: 180, weight: 65);           // check height and weight to print title of body
print(body1.body)                                // print title
var body2 = Person()                                // no data -> title body is default
print(body2.toString())

var newPerson = body1.setNewTitle(height: 150, weight: 40)
if(body1 !== newPerson){
    print("body1 and newPerson are diffrerence") 
    print(newPerson.toString())
}

enum Compass {
    case east, west, south, north
    mutating func moveToNext()  {               // self to assignn the case 
        switch self {
        case .east:
            self = .west
        case .west:
            self = .south
        case .south:
            self = .north
        case .north:
            self = .east
        default:
            fatalError("Unsupported")
        }
        
    }
}
var compass1  = Compass.east
compass1.moveToNext()
print(compass1)
compass1.moveToNext()
print(compass1)

class Calculator {
    static let pi:Float = 3.1416
    class func sum(a: Int, b: Int) -> Int {
        return a + b
    }
    class func circleArea(radius: Float) -> Float  {
        return  pi * radius * radius
    }
}
print("sum is :\(Calculator.sum(a: 3, b: 4))")
print("CircleArea is : \(Calculator.circleArea(radius: 20))")





