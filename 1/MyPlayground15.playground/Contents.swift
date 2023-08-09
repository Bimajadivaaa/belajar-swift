import UIKit

//class Person {
//    let name : String
//
//    init(name: String) {
//        self.name = name
//        print("\(name) is being initialized")
//    }
//    deinit {
//        print("\(name) is being deintialized")
//    }
//}
//
//var reference1: Person?
//var reference2: Person?
//var reference3: Person?
//
//reference1 = Person(name: "Dicoding indonesia")
//
//reference2 = reference1
//reference3 = reference1
//
//reference1 = nil
//reference2 = nil
//reference3 = nil
class Counter {
    var count = 1
    func increment() { count *= 2 }
    func incrementBy(amount: Int) { count *= amount }
    func reset() { count = 1 }
}
let counter = Counter(); counter.increment(); counter.reset(); counter.incrementBy(amount: 5); counter.increment(); counter.incrementBy(amount: 2)
print(counter.count)

class Person {
    let name: String
    init(name: String) { self.name = name; print("\(name) is being initialized") }
    deinit { print("\(name) is being deinitialized") }
}
var reference1: Person? = Person(name: "Dicoding indonesia")
var reference2: Person? = reference1
var reference3: Person? = reference1
reference1 = nil
reference2 = nil


