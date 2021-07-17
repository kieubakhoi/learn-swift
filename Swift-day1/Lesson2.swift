import Foundation

// This is about lesson 2 : Basic Operators


// about the ternary conditional operator 
let  (width, height)  = (200, 800) 

let  isPhoneX = (width, height)  ==  (375, 812) ? "is IphoneX " : "Is not IphoneX" ; print("result isIphone =\(isPhoneX) ")

// this show  "Done".

let age:Int? = nil 

let myAge = age ?? 21 ; print("My age: \(myAge)")

for i in 1..<3 {
     print("index:\(i) ")  // value is 5  print 5, but value 6,7,8 command is not work. print after 9-> print 6 !!! 
}

if(1<2 && 5<6){ 
    print( "Operator && work when two charactor true !!!")
}

if(1<2 || 5>6){
    print("Operator && work when  only one of the two values charactor true !!" )
}

let range = ...7 // make value array begin 1 to 7 

print(range.contains(8) )

let name = ["Kieu","ba","Khoi"]

for i in name[0...]{
    print("Index: \(i)")
}
