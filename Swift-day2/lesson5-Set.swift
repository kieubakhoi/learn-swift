import Foundation

var arrName: Set<String> = ["Khoi","Hung","Nguyen","Khuong"]

   // count elements
if(arrName.isEmpty){
    print("the array is empty")
}
else {
    print ("number of lelements \(arrName.count)") 
}
arrName.insert("Khois")             // this is unordered list, not have oder when insert 
arrName.remove("Hung")
print(arrName.sorted())              // oder list with alphabet 

if(arrName.contains("Hung")){           // check elements exsiting from array
    print("Elements Hung is not  removed")
}
else{
    print("Elements Hung is  removed")
}

// for item in arrName {           //list elements form list
//     print("Name: \(item)")
// }
var arrNumber1: Set<Int> = [1,2,6,7,8,3,5,6]  // list can't have two the same elements
var arrNumber2: Set<Int> = [2,6,0,9]

// let resultSet = arrNumber1.intersection(arrNumber2).sorted()   // get the same of two array 
// let resultSet = arrNumber1.union(arrNumber2).sorted()          // get the totals of two array 
// let resultSet = arrNumber1.subtracting(arrNumber2).sorted()          // get the elements in arr1, but not in arr2
let resultSet = arrNumber1.symmetricDifference(arrNumber2).sorted()          // get the elements not the same of two array
print(resultSet)

var pants: Set<String> = ["jeans","pant"]
var clothes: Set<String> = ["jeans","pant","shirt","dress","jacket"]
var machine: Set<String> = ["car","freezer","fan"]
clothes.isSuperset(of: pants)           //check arr1 is a super set of arr2 
pants.isSubset(of: clothes)               // check arr1 is a sub set of arr2

machine.isDisjoint(with: clothes)           // check arr3 is have any elenents from arr2







