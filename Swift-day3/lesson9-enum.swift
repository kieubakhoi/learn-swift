// import UIKit
import Foundation

// About Enum

enum Person {           // make a types enum 
   case  height         // case and needn't assign a types of value
   case  weight
   case age

//    case height, weight, age 
}

// var myProfile = Person.height     // This is one of makeing variable
var myProfile: Person = .height

switch myProfile {
case .height:
    print("You choose height")
case .weight:
    print("You choose weight")
case .age: 
    print("You choose age")
default:
    print("Your choose is not exsiting ! ")
}

enum IphoneDevice {                 // using tuples must be have types for case
    case phone(Float , String)
    case appleWatch(String , String)
}
var myDevice: IphoneDevice = .phone(14.1, "while")           // make case value
// var myDevice: IphoneDevice = .appleWatch("sport 38mm", UIColor.while)            // not run because not have module UIKit
switch myDevice {
case let  .phone(name , color):                                 // must be let to make a variable
    print("My version Iphone is:\(name) with color: \(color)")
case let .appleWatch(name , color):
    print("My name AppleWatch is \(name) with color: \(color) ")
default:
    print("Don't know about your Device")
}
enum Direction: Int {               // make enum have  types deafault value 
    case right = 1 
    case left =  2
    case up = 3
    case down = 4
}

print ("Raw value of right is : \(Direction.right.rawValue)")



