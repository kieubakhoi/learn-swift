import Foundation

// about fuction

func sayHello() -> String {                 // function return a string , It has a types of return
    return  "Hi every body, I here"
}
print(sayHello()) 

func sayHi() {
    print("Hello world !!!")                // function not have types of return, It works something
}
sayHi()         // call the function run 

func sum(a: Int, b: Int) -> Int {           // function have a params and have a data to return (Int)
    return a + b
}
print("Sum 5 and 6 is: \(sum(a: 5,b: 6))")    // print must be have  keys and value

func sumAndMuntiply(a: Double, b: Double) -> (sum: Double, muntipley: Double)? {        // ? to check the value is nil
    return (a + b, a * b)
}
if let result = sumAndMuntiply(a: 9, b: 1){
    print("result: \(result)")
}else {
    print("Can't finish the function")
}
func printSum(_ a: Float ,_ b: Float)  {        // add "_" not add key when call function
    let sum = a + b
    print(sum)
}
printSum(10, 10)
func square(x: Double, y: Double = 200) -> Double {           // This is the default value for keys y
    return x * y
}
print("This is set new value: \(square(x: 10, y: 20))")             // set new value for y
print("This is no set new value: \(square(x:10))")              // no set value for  y

func sumAll(_ numbers: Double...) -> Double {           // Set variables not know how many 
    var total = 0.0 ;
    for number in numbers{
         total += number
    }
    return total
}
print ("The result: \(sumAll(1,2,3,4,5,6))")

var aString = "I am khoi"
print("Before function: \(aString)")
func changeText (_  a: inout String)  {             // keys a can have a value out of function
     a = "I am hung"
}
changeText(&aString)                                    // "&" to make value of a by aString
print("After function: \(aString)")

func sayGoodby()  {
    sayHi()
    print("Good bye now and see u later")
}