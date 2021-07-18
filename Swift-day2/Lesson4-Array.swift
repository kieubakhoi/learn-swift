import Foundation

var arrayText = [String]() // make a array with type is string , == array:[String] = []
// var arr1 = ["I am", 21]  // Only 1 types for a array
arrayText.append("I am")
arrayText.append("Khoi")

print("Number of Elements: \(arrayText.count)")  // count elements

var tenElements = Array(repeating: 8, count:10);  // make array with the same value 8, 10 times
var twoElements = Array(repeating: 3,count:2); 
print(tenElements)
print(twoElements)

var totals = tenElements + twoElements   // must be the same types to make totals
print(totals)

var smartPhone = ["Iphone", "SamSung","Xiaomi","OPPO"]  //make array types string but use :[String]
smartPhone += ["V smart"]             // add new element in the lastest. must have "[]"
print(smartPhone[1...2])             // the index of arry to print
smartPhone.insert("Nokia", at: 1)    // insert a value by the index 
smartPhone.remove(at: 1)             // remove a value by the index
print(smartPhone)  

// for sm in smartPhone{
//     print("The index: \(sm)") //list array by the loop for
// }

for (index, value) in smartPhone.enumerated() {              // list array with two variables index and value
    print("The index \(index) and the value: \(value)")
}






