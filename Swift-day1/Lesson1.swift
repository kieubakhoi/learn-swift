import Foundation

// value wonn't be changed use 'var', else use 'let' to be constant !
let constvalue  = 1 // use int for the constant
var value  = 2        // not use any types for value, but can assign later
var price : Double  // assign types, but not useful.

// value 

var number = 1 // Int

var name = "Kieu ba khoi" // must be use "" to be types of string 

name = "Ten la: \(name)"  // use \ to insert variable int a string .

print(name) ;  // to print the variable

/*
This is comment for many rows
 row 1 
 row 2
 */
 
number *=  1_000_000  ; print(number) ;  // use _ to be good-looking

var aNumber:UInt64 = 100 ;

var anotherNumber:UInt8 = 10; 

var result = aNumber + UInt64(anotherNumber) ; print("The result :\(result)")

typealias BigNumber = Double ;  // This is declare a existing type by a Keyword

let resultOfAll:BigNumber = 1_000_000_000 ; print("result : \(resultOfAll)")

//Tuples 

let httpResponse = (404, "Not found"); print(httpResponse)

let (statusCode,statusMessage) = httpResponse 

print("The status: \(statusCode)")

var nilValue :Int? = 10 ; 
nilValue = nil ; print("This is variable: \(nilValue)")

var one = 0 ;
assert(one >= 1,"This is not the number one !!!")

let age = -3
assert(age >= 0, "A person's age can't be less than zero.")

// This assertion fails because -3 isn't >= 0.
// var index = -1
// precondition(index > 0, "Index must be greater than zero.")

/* Done the work 1 
but assert and precondition not work !!!

*/


