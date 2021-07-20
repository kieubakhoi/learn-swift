import Foundation

//About Protocols

protocol DetailInfomationProtocol {
    //Property Requirements
    var fullName: String { get }
    //Method Requirements
    func showDetail() -> String
}
// Example of a class "conforms a protocols"
class User: DetailInfomationProtocol {
    var firstName: String
    var lastName: String
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    // must implements property in Protocol
    var fullName: String {
        return fullName + lastName
    }
     func showDetail() -> String {
         return "The Name: \(firstName) \(lastName)"
    }
}
var khoi = User(firstName: "Kieu Ba", lastName: "Khoi")
print(khoi.showDetail())

protocol ToggleLabelProtocol {
    //Mutating method Requirements
    mutating func toggle()
}
enum Switcher: ToggleLabelProtocol {
    case on ,off
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off: 
            self = .on
        default:
            fatalError("Unsupported")
        }
    }
}
var lightSwitch = Switcher.on
print(lightSwitch.toggle())
print(lightSwitch.toggle())
// Initializer Requirements
protocol InitializerProtocol {
    init(name: String) 
}
class Animal {

}
class Bird: Animal,InitializerProtocol {
    var name :String
    required  init(name: String) {
        self.name = name
    }
}
let bird = Bird(name: "Hola hola")
print(bird)
