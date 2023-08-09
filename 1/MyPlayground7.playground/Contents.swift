import UIKit

func greet(person: [String: String]) {
    guard let name = person["name"] else{
        return
    }
    
    print("Hello \(name)!")
    
    guard let location = person["location"] else {
        print("i hope the weather is near to you.")
        return
    }
    print("I hope the weather is nice in \(location)")
}

greet(person: ["name" : "John"])
greet(person: ["name" : "Jane", "location" : "superindo"])
