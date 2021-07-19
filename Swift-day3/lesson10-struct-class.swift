// import UIKit
import Foundation

// About Struct and Class

//Struct
struct Person {
    var name: String = ""                   // defalt value for variable ,Struct is a types "Values"
    var age = 18                           // auto set types
}

// var myProfile = Person();                   // work
// myProfile.name = "Kieu ba khoi"               // work
var myProfile = Person(name: "Kieu ba khoi", age: 22)     // make srtruct with parameters
var aPerson = myProfile ;                   // make two values in two memory area
print("My name is: \(myProfile.name)")
print("My age is: \(myProfile.age)")

aPerson.age = 20                           // this is a other memory
print("My age is: \(aPerson.age)")


//Class
class User{
    var firstName = "Kieu Ba"
    var universityName:String?
    var myBodyShape = Person(name: "Khoi", age: 18)
}

var user1 = User()
var user2 = user1 
var user3 = User()
print("Firt name:\(user2.firstName)")
print("Last name:\(user2.myBodyShape.name)")
print("Age:\(user2.myBodyShape.age)")

if(user1 === user2){
    print("User1 and user2 are in the same memory")
}
else{
    print("User 1 is not identical user 2")
}
if(user3 === user2){
    print("User3 and user2 are in the same memory")
}
else{
        print("User 3 is not identical user 2")
}





