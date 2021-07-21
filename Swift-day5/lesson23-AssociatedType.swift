import Foundation
// About Generic

//Swift's Array and Dictionary types are both genneric collections
// Swap 2 Integers
func swap2Int( _ a: inout Int, _ b: inout Int) {
    let temp = a 
    a = b 
    b = temp
}
var x = 34
var y = 32
swap2Int(&x , &y)
print("x is now: \(x) , y is now: \(y)")
// T = placeholder type name
func swap2String<T>( _ a: inout T, _ b: inout T) {
    let temp = a 
    a = b 
    b = temp
}
var string1 = "Khoi"
var string2 = "Kieu ba"
swap2String(&string1 , &string2)
print("string1 is now: \(string1) , string2 is now: \(string2)")

//Define Stack struct with type Elements or T
struct Stack<T>{
    var items = [T]()
    //muteting need using to modeify or mutating the struct's items array
    mutating func push(_ item: T){
        return items.append(item)
    }
    mutating func pop()-> T? {
        return items.count == 0 ? nil : items.removeLast()
    }
}
var integer = Stack<Int>()
integer.push(8)
integer.push(212)
integer.push(785)
integer.push(22)
integer.push(232)
print(integer)
integer.pop()
print(integer)

// Type Constraint => parameter's name  + type parameter list
// Equatable => it is quaranted to support the equal to operator

func findOfIndex<T:  Equatable>(of valueToFind: T, in array : [T]) -> Int? {
    for(index, value) in array.enumerated() {
        if(value == valueToFind){
            return index
        }
    }    
     return nil 
}
let index = findOfIndex(of: 1, in: [10,24,1,13])
print(index)
let name = findOfIndex(of: "Khoi", in: ["Khoi", "Hoang", "Van", "Long"])
print(name)

//Associated Types

protocol Container {
    associatedtype T 
    mutating func append(_ item: T)
    var count: Int  { get }
}

struct InStack: Container {
    //origin InStack  implementation
    var items = [Int]()
        mutating func push(_ item : T){
        return items.append(item)
    }
    mutating func pop()-> Int? {
        return  items.removeLast()
    }
    //comforma to the Container protocol
    typealias  T = Int
    mutating func append(_ item: T){
        self.push(item)
    }
    var count: Int  { 
        return items.count
    }
}

