import Foundation

// About Inheritance
class Animal {              // use final to be un-Inheritance 
    var name = ""
    func eat() {
        print("Animal is eating !!!")
    }
    var description: String {
        return "This is an animal named: \(self.name)"
    }
}

class Cat: Animal {
    var canClimb : Bool = true
    func sayMeo() {
        print("Meo meo !!!!")
    }
    override func eat(){                         // to override func form  the super class,  
        super.eat()                                // can call the supper class run
        print("Cat is eating ...")                 // cant run with itself
    }
    override var description: String {          // to override the variable , can call the super variable 
        return "Cat's name is \(super.description) , can climb: \(self.canClimb)"
    } 
}

let animal = Animal()
var myCat  = Cat()
myCat.name = "John"
print(myCat.name)
myCat.eat()
print(myCat.description)
