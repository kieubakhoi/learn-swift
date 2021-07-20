import Foundation

// About Initialization

struct Person {
    var h , w : Double
    // var h = 180.0        // this is the same Initialize by init()
    // var w = 67.0 
    init() {
        h = 180
        w = 67
    }
}
let aPerson = Person()
print("body has  height: \(aPerson.h) and weight: \(aPerson.w) ")

struct Energy {
    var calories: Float
    init(fromCalories calories: Float) {
        self.calories = calories
    }
    init(fromJoules joules: Float) {
        self.calories = 0.0002390006 * joules
    }
     // Initializer parameters without  Agrument  labels
    init( _ joules: Float) {
        self.calories = 0.0002390006 * joules
    }
}

let energy = Energy(fromCalories : 100.0)
print("Energy.calories is :\(energy.calories)")     // make make object with func init ()  :  calories 
let energy2 = Energy(fromJoules : 200)
print("Energy.calories is : \(energy2.calories)")   // set value joules to change calo

class Customer {
    var name: String
    var age: Int?
    init(name : String) {
        self.name = name
    }
    convenience init() {
        self.init (name : "No name")
    }
}
class Employee : Customer {
    var staffNumber: String
    init(name: String, staffNumber: String){
        self.staffNumber = staffNumber // call this line first
        super.init(name: name)
    }
    convenience override  init(name: String) {
        self.init(name: name, staffNumber : "000")
    }
}

// init() can return nil => Faiable initializer. Example :
enum Sex {
    case male , female, other
    init?(sexCharacter :Character){
        switch sexCharacter {
        case "M":
            self = .male
        case "F":
            self = .female
        case "O":
            self = .other

        default:
            return nil 
        }
    }
}
let sex1 = Sex(sexCharacter: "M")
let sex2 = Sex(sexCharacter: "B")
print(sex1)
print(sex2)
// Failable Initializer  for Enumeration with Raw value
enum Rank: String {
    case bad = "Bad" , good = "Good" , medium = "Medium"
}
let rank1 = Rank(rawValue: "Medium")
let rank2 = Rank(rawValue: "any rank ... ")
print("\(rank1) and  \(rank2) ")

// Setting a Default Property Value with a Colsures or Function
class MainView: UILabel {           // UILabel is a super class
    var leftLabel : UILabel = {         // this is a closures 
        let label =  UILabel()
        label.textColor = UIColor.green
        label.text = "This is an example tetx"
        return label
    }()
}

let mainView = MainView()
print(mainView.leftLabel.text)          // to print the text 
