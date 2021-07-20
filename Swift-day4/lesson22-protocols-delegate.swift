import Foundation

//About Protocols and Delegation

//Delegate
protocol ExampleDelegate {
    func method1()
}
//Delegate enables a class or struct to delagate some of its reponsibilities to an instance of another type
// Class that have delegate property
class ExampleClass {
    var delegate: ExampleDelegate?
    func reloadData() {
        print("Running data ...")
        print("Do something in 1 seconds .. ")
        delegate?.method1()
        print("do some task in 3 seconds ...")
    }
}
class ClassConformDelegate : ExampleDelegate {
    var aProperty: ExampleClass
    init (aProperty: ExampleClass){
        self.aProperty = aProperty
        self.aProperty.delegate = self
        self.aProperty.reloadData()
    }
    // // Implements delegate function
    // func method1() {
    //     print("ClassConformDelegate call method1")
    // }
}

// Adding Protocols Conformace with an Extension

extension ClassConformDelegate {
     // Implements delegate function
    func method1() {
        print("ClassConformDelegate call method1")
    }
}
let a = ClassConformDelegate(aProperty: ExampleClass() )

protocol TextRepresentTable{
    var textualDescription: String { get }
}
class Animal: TextRepresentTable {
    var name: String
    init (name: String){
        self.name = name
    }
}
extension Animal {
    var textualDescription: String { 
        return "This is an Animal"
    }
}
// Optional Protocol Requirements
@objc protocol ExampleProtocol {
    @objc optional func method3 ()
    @objc optional var property3: Int { get }
}
class AnExampleClass : ExampleProtocol {

}