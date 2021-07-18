import Foundation

// About The loop 

// for index in 1...10 {
//     print("index= \(index)")            // print by index

// }
// for _ in 1...5{
//     print("not use index")            // print not using index
// }
// for index in stride(from: 1, to: 9, by: 2 ){
//     print(index)
// }

// using while 

var count = 0 ;
while count<5 {                    //using while

    print("index: \(count)")
    count += 1 
    if count == 1{
        // continue                        // It not show  "After count: 1"
        break                               // It only show index : 0
    }
    print("After count:\(count)")
}

// var number = 0;
// repeat{                                 // the same while
//     print("index\(number)")
//     number += 1 
// }while number < 10

var point = 10 
var message :String 
switch point {
case 1...5: 
    message = "Bad"
case 5...7:
    message = "Mediumn"
case 8,9: 
    message = "Good"
case 10: 
    message = "Excellent"
default:
    message = "Not a valid point"
}
print("Your result : \(message)")

var language = "Swift"
switch language {
case "C++","java","Swift","PHP":
    print("\(language) is a programing language")
case "English" ,"Vietnamese":
    print("\(language) is a language which khoi knows ")
case "Grr" ,"Meos":
    print ("That is sound of animals")
    fallthrough   			  // It's continue show the default
default:
   print("Some thing else !!!")
}

