import Foundation
// Ép kiểu

class MediaItem {
    var name: String
    init(name: String){
        self.name = name
    }
}
class Song: MediaItem {
    var artist: String
    init(name: String, artist: String){
        self.artist = artist
        super.init(name: name)
    }
}
class Movie: MediaItem {
    var director: String
    init(name: String, director: String){
        self.director = director
        super.init(name: name)
    }
} 
var mediaLists: [MediaItem] = [
    Movie(name: "Star Wall", director: "Khoikb"),
    Movie(name: "Bố già", director: "Vũ Ngọc Đãng && Trấn Thành"),
    Movie(name: "Your Riven", director: "Khoikb"),
    Song(name: "One more time", artist: "Khoikb"),
    Song(name: "The nights", artist: "avicii"),
]

var numberOfMovie = 0 ;
var numberOfSong = 0 ;

for medialist in mediaLists {
    if medialist is Movie {
        numberOfMovie += 1
    }
    else if medialist is Song {
        numberOfSong +=  1
    }
}
// print("number of Song is \(numberOfSong)")
// print("number of Media is \(numberOfMovie)")
// for eachMedia in mediaLists {
//     if let movie = eachMedia as? Movie {
//         //Downcasting
//     print("Movie: \(movie.name) and director: \(movie.director)")
//     }
//     else if let song = eachMedia as? Song {
//         print("Song: \(song.name) and artist: \(song.artist)")
//     }
// }
// Type Cassting for Any and AnyObject
var things = [Any]()  // an arry of anyObject
things.append(100)
things.append(200.0)
things.append("Khoikb")
things.append((10.0 , 20.0))        // tuples
things.append(Song(name:"Love story",artist:"khoikb"))  //an Object
things.append({(name: String )-> String in "hello \(name)" }) // a closures
for thing in things {
    switch thing {
    case let anInteger as Int:
        print("An Int value: \(anInteger)")
    case let aDouble as Double where aDouble > 0:
        print("A Doule value: \(aDouble) , positive")      
    case let aString  as String :
        print("An String value: \(aString) ")   
    case let (x , y) as (Double, Double) :
        print("A Tuples value x:\(x) and y:\(y)")    
    case let aSong as Song: 
        print("This is a song: \(aSong.name) and artist: \(aSong.artist)")
    case let aClosure as (String)-> String:
        print("This is a closure: \(aClosure("Khoi"))")
    default:
      print("Some thing else")
    }
}






