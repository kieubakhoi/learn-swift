import Foundation
// About Deinitializer for custom class

class User{
    var name: String
    var readingBook: Book?                  // maybe nil and not to stop if have nil
    init(name: String){
        self.name = name
    }
}

class Book{
    var numberOfPage = 1000    
}
var mrKhoi = User(name: "Kieu Ba Khoi")
mrKhoi.readingBook = Book()
if let result = mrKhoi.readingBook?.numberOfPage{       // check nil of readingBook
    print("Book of Khoi has : \(result)  pages")
}
else {
    print("Fail to get number of pages")
}


class Address {
    var buildingName: String?
    var buildingNumber: String?
    var stress: String?
    func detailAddress() -> String? {
        if let buildingName = buildingName, let buildingNumber = buildingNumber, let stress = stress {
            return "\(buildingName), \(buildingNumber), \(stress)"
        }
        else {
            return nil
        }
    }
}
let address = Address()
address.buildingName = "Kieu ba khoi"
address.buildingNumber = "4"
address.stress =  "Van Con"
if let detailAddress = address.detailAddress(){
    print(detailAddress)
}
else {
    print("Fail to get Detail Address Building")
}

// if(address.detailAdress() != nil){           // shouldn't run becase run two times function 
//     print((address.detailAdress())
// }
// else {
//      print("Fail to get Detail Address Building")
// }

var testScores = [
    "Khoi": [10,9,9],
    "Hung": [9,10,9]
]
testScores["Khoi"]? [1] = 100            // use "?" to catch error, and program still running
print(testScores)
testScores["Nguyen"]?[1] = 100              // nothing change, but program still running
print(testScores)


