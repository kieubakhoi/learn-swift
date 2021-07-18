import Foundation
// about closures

var name = ["An", "Khoi","Nguyen","Long","Yen","Binh","Beo"]
var sortName  = name.sorted(by: {
    (s1: String , s2:String)-> Bool in                  // this is a closures
        return s1<s2 

    // s1 , s2 -> Bool in                   // not use types for varibale
    //  return s1 > s2
    // $0 >$1                                // fastest
})
print(sortName)
func handleSort(s1: Int, s2: Int) -> Bool {
    return s1 < s2
}
let numbers = [1,3,5,6,2,9] 
print(numbers.sorted(by:handleSort))

var squaredNumbers = numbers.map({(item)-> Int in           // maps array "numbers" and elvelement call by name : "item" in  closures 
    return  item * item
}
)
print(squaredNumbers)
var strings = numbers.map({(item)-> String in 
    return "Index : \(item)"
})
print("strings is : \( strings)")

func doTask(completeHandle: @escaping (_ responseString: String, _ statusCode: Int) -> Void)  {         // haven't understood
    print("First do task")
    completeHandle("Not found", 404)
}
doTask{ 
    (responseStr , errStatus) in                                                        // haven't understood
    print("Something else")
    print("String \(responseStr) ; and Status: \(errStatus)")
}

let work =  {
    print("Doing the work ")            // this is a closures
}
let anotherWork = work
anotherWork()

func someWork(hardWork: @autoclosure() -> Void) {       //auto closures 
    print("First run")

    hardWork()
}
someWork(hardWork: print("Do something when call"))


