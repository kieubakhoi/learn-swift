import Foundation
// About Advanced Operator

extension UInt8 {
    func showDetail(varName: String) {
        print("\(varName)detail: value \(self), bit value: \(String(self, radix: 2))")
    }
}
let numberInBits: UInt8 = 0b11001111
let invertedNumberInBits = ~numberInBits

invertedNumberInBits.showDetail(varName: "invertedNumberInBits")
let firstBit: UInt8 = 0b01101001
let secondBit:UInt8 = 0b1101111
// And 
let totalNumberBit = firstBit & secondBit 
totalNumberBit.showDetail(varName: "totalNumberBit")

//OR
let numberOrBit = firstBit | secondBit 
numberOrBit.showDetail(varName: "NumbeOrBit")

//exclusive Or  operator = XOR
let numberXORBit = firstBit ^ secondBit 
numberXORBit.showDetail(varName: "NumbeXOrBit")
// Shift
let shiftBit: UInt8 = 0b01100100
shiftBit.showDetail(varName:"ShiftBit")
let shift1 =  shiftBit << 1 // to left 
shift1.showDetail(varName:"Shift1")
let shift2 =  shiftBit >> 1 // to right
shift1.showDetail(varName:"Shift right")
//OverFlow Opertator
var maxInt32 = Int32.max
print("Max Int32: \(maxInt32)")
maxInt32 = maxInt32 &+ 1        // when get out max -> to sart the min

//Presidence and Associative
var anExpresion = 5 + ((7 % 8) * 5) // Presidence : %, *, /, operator first -> +, - operator" = seconds 
print(anExpresion)

// Operator Method
// "+ operator is an infix operator" . Ex : a + b

struct Vector {
    var x = 0.0 , y = 0.0, z = 0.0
}
extension Vector {
    static func + (v1: Vector , v2: Vector) -> Vector {
        return Vector(x: v1.x + v2.x, y: v1.y + v2.y, z: v1.z + v2.z)
    }
    //unary  operators. Ex :  +a, -b
    static prefix  func  - (vector: Vector)-> Vector{
        return Vector(x: -vector.x, y: -vector.y, z: -vector.z)
    }
    static  func == (v1: Vector , v2: Vector) -> Bool {
        return (v1.x == v2.x) && (v1.y == v2.y) && (v1.z == v2.z)
    }
}
let vector1 = Vector(x: 1.0, y: 4.0, z: 7.0)
let vector2 = Vector(x: 3.0, y: 1.0, z: 9.0)
var sum = vector1 + vector2
print("sum: \(sum)")

//unary  operators. Ex :  +a, -b
let vector3 = -vector1
print("Vector3 : \(vector3)")

if(vector1 == vector2){
    print("2 vectors are equivalent")
}
else {
    print("2 vectors are not equivalent")
    
}
