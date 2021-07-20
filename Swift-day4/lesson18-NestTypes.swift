import Foundation

//About Nest Types

//Types can be nested to as many levels as are required
struct Fruit {
    enum RedFruit: String {
        case apple = "apple" , strawberry = "strawberry", waterlemon = "waterlemon"
        enum Size: Int {
            case small = 1 , medium , big
        }
    }
    var myFruit: RedFruit?
    var myFruitSize: RedFruit.Size?
    var description: String {
        return "My Fruit =\(myFruit?.rawValue), size: \(myFruitSize?.rawValue)"
    }
}
print(Fruit.RedFruit.strawberry.rawValue)
print(Fruit.RedFruit.Size.big.rawValue)

var fruit = Fruit()

fruit.myFruit = Fruit.RedFruit.waterlemon
fruit.myFruitSize = Fruit.RedFruit.Size.small
print("Fruit detail : \(fruit)")                // so hard to understand properties
print("Fruit detail: \(fruit.description)")