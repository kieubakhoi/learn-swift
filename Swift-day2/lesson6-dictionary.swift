import Foundation

// About Dictionary 

var profile: [String: String] = ["name":"Kieu ba khoi","age":"21"]  // the colection is performed key and value
var number: [Int: String] = [1: "one", 5: "five"]
print ("Count keys and values have: \(profile.count)")            // count the keys and values
print(number[5])            // print the value at key 5
profile["name"] = "Kieu ba hung"            // set key name a new value

if let oldName = profile.updateValue("Kieu Ba Nguyen" ,forKey:"name"){
    print(oldName)              // old value when method update is completed
}

print(profile["name"])          // this is new value
// profile = [:]                // remove all keys and values

if(profile.isEmpty){            // check the dictionary is  empty or not
    print("This dictionary is empty !")
}
else {
    print("This is not empty!")
}

for (key, value) in profile {          // use loop and tuples to list the keys and values
    print("key: \(key) __ value: \(value)")
}

for keys in profile.keys{               // list  keys
    print("key: \(keys)")
}

for values in profile.values{           //list values
    print("values: \(values)")
}

let allKeys = [String](profile.keys)        // set keys to a new array
    print("key: \(allKeys)")

let allValues = [String](profile.values)   // set values to a new array
    print("key: \(allValues)")


