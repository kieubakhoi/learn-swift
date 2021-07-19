import Foundation

//About Subscript

struct MultiplicationTable {
    let multiplier: Int 
    subscript(index: Int) -> Int {              // 
        return multiplier * index
    }

}
let mt = MultiplicationTable(multiplier : 4)
for i in 1...10 {
    print("\(i) nultiplier *4 is :\(mt[i])")
} 

struct Name {
    var firstName = [                                       // This is aray
        ["Kieu","Nguyen","Bui","Pham","Vu","Do"],
        ["Truong","Ngoc","Luong","Tu"],
        ["Alex","John","Adam","Lucy"]
    ]
    subscript(row: Int , column: Int)-> String {            // Its known a input parameters and to do Sonethigns
        get {
            assert(firstName[row][column] != nil ,"No name found")
            return firstName[row][column]
        }
        set {
            assert(firstName[row][column] != nil ,"Can not set  name found")
            firstName[row][column] = newValue    
        }
    }
}
var newName = Name()
print(newName[0, 3])

newName[0, 0] = "Kieu ba khoi"
print(newName[0, 0])






