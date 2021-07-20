import Foundation

//About ARC

class Customer {
    let name: String
    init (name: String){
        self.name = name 
        print("\(self.name) is being initialized")
    }
    deinit {
        print("\(self.name) is being deinitialized")
    }
    var house: House?
}
var customer1: Customer?
var customer2: Customer?
var customer3: Customer?
var customer 1 = Customer(name: "kieu ba khoi")
customer2 = customer1
customer3 = customer1
customer1 = nil
customer2 = nil
customer3 = nil         // when three point to memory are nil , this memory auto be clear

class House {
    var address: String
    init(address: String){
        self.address = address
    }
    weak var author: Customer?
    deinit {
        print("The house at: \(address) is being deinitialized")
    }
}
var mrKhoi: Customer?
var hisHouse:House?
mrKhoi = Customer(name: "kieu ba khoi")
hisHouse = House(address: "Van Con, Hoai Duc, Ha Noi")
mrKhoi!.house = hisHouse
hisHouse!.author = mrKhoi
mrKhoi = nil                            // now if to deinitialize, must deinit the mrKhoi first, then do hisHouse 
hisHouse = nil
class User{
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
    }
    deinit {
        print("User: \(name) is being deinitialized")
    }
    

}
class CreditCard {
    let number: UInt64
    unowned var user: User
    init(number: UInt64, user: User){
        self.number = number
        self.user = user
    }
    deinit {
        print("Card #\(number) is being deinitialized")
    }
}
var mrKhoi: User?
var creditCard:CreditCard?

mrKhoi = User(name: "kieu ba khoi")
creditCard = CreditCard(number: 1234_2334_4252_5832 , user:mrKhoi!)
mrKhoi!.card = creditCard

mrKhoi = nil               // now if to deinitialize, must deinit the mrKhoi first, then do creditCard 
creditCard = nil


