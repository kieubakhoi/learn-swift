import Foundation

// About Properties

struct Patient {
    var name :String
    let yearOfBirth: Int            // This is call only one value, then can't not set new value
}
var aPatient = Patient(name: "Kieu ba khoi", yearOfBirth: 18)
// aPatient.yearOfBirth = 20                           // can't not run beause of value's yearOfBirth
print("Your name: \(aPatient.name)")

class MovieManager{
    lazy var getOneMovieName:String = { 
        print("This is only run when call")
        return "Star Wall"
    }()
}
let manager = MovieManager()
print("The name of this  movie is: \(manager.getOneMovieName)")

struct Calculation{
    var x: Double
    var  squaredX: Double {
        get{
            return x * x
        }
        set{
            print("new value of X: \(newValue)")
            x = sqrt(newValue)
        }
    }
    var cubeX: Double {             // this is only red , only getter
        return x * x * x
    }
    var step: Int = 0{
        willSet(newStep) {
            print("The new value before set value: \(newStep)")
        }
        didSet {
            print("The old value after set: \(oldValue)")
        }
    }

}

var calculation = Calculation(x: 100)                   // make new oject class
print("multi ten is: \(calculation.squaredX) ")         // that is call : getter squaredX  -> return x * x
calculation.squaredX = 81                               // that is call : setter squaredX -> call the set (print) and (sqrt(x))
print("X now is \(calculation.x)")
print("Cube x is :\(calculation.cubeX)")                // X now is 729

// calculation.cubeX = 20 // not run 
calculation.step = 1000

class Computation {
    static var title = "That is a Calculation class"            // use static, you can call properties value else make a oject
    static let pi: Float = 3.1416
    static var squaredPi: Float {
        return pi * pi
    }
}
print("Title is: \(Computation.title) and pi is: \(Computation.pi)")


