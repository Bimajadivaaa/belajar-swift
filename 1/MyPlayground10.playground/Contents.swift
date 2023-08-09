import UIKit

//let names = ["Gilang", "Alex", "Dimas", "Arif", "Bima"]
//
////func backward(_ a: String, _ b: String) -> Bool {
////    return a < b
////}
//var reservedNames = names.sorted(by: <)
//print(reservedNames)

//let digitNames = [
//    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
//       5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
//]
//let numbers = [14,21,22,44]
//
//let strings = numbers.map{ (number) -> String in
//    var number = number
//    var output = ""
//    repeat {
//        output = digitNames[number % 10 ]! + output
//        number /= 10
//    }
//    while number > 0
//        return output
//}
//
//print("String bertipe data array string dan memiliki nilai \(strings)")

//func makeIncrementer(forIncrement amount: Int) -> () -> Int {
//    var runningTotal = 0
//    func incrementer() -> Int{
//        runningTotal += amount
//        return runningTotal
//    }
//    return incrementer
//}
//
//let incrementByTren = makeIncrementer(forIncrement: 10)
//print(incrementByTren())
//print(incrementByTren())
//print(incrementByTren())
//
//let incrementbySeven = makeIncrementer(forIncrement: 7)
//print(incrementbySeven())
//print(incrementbySeven())
//print(incrementbySeven())

var completionHandlers : [() -> Void] = []

func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}

func someFunctionWithNoneEscapingClosure(closure: () -> Void) {
    closure()
}

class someClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure{
            self.x = 100
        }
        someFunctionWithNoneEscapingClosure{
            x = 200
        }
            
    }
}
    
    let instance = someClass()
    
    //Referensi tanpa escaping closure
    instance.doSomething()
    print(instance.x)
    
    //Referensi menggunakan escaping closure
    completionHandlers.first?()
    print(instance.x)
    
    

