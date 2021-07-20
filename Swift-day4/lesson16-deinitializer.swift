import Foundation
// About Deinitializer for custom class

class Stock {
    static var coinsInStock = 20_000
    static func distribute(coins: Int) -> Int {
        let numberOfDistributecCoins = min(coins, coinsInStock)             // set max of coins can give for player
            coinsInStock = coinsInStock - numberOfDistributecCoins
            return numberOfDistributecCoins                                 // if max, coins'sbank is 0
    }
    static func receive(coins: Int) {                                       // to return coins for bank
        coinsInStock += coins
    }
}
class GamePlayer {
    var existingCoins: Int
    init(coins: Int){                                           // initializer the player and pick coins from bank
        existingCoins = Stock.distribute(coins: coins)
    } 
    func win(coins : Int) {                                     // if player win, add coins win and coins had, pick it from bank
        existingCoins += Stock.distribute(coins: coins)
    }
    deinit {                                                    // get all coins form player to bank
        Stock.receive(coins: existingCoins)
    }
}
var player: GamePlayer? = GamePlayer(coins: 10_000)
print("Existing coins  is \(player?.existingCoins)") 
player!.win(coins: 150)
print("There are now: \(Stock.coinsInStock) coins left in the bank")
player = nil
print("There are now: \(Stock.coinsInStock) coins left in the bank")

