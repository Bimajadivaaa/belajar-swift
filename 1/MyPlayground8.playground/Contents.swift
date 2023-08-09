import UIKit

//func greet(person: String) -> String{
//    return "Hello, " + person + "!"
//}
//
//print(greet(person: "yaya"))
//
//func abc(makan: String) -> String{
//    return "Gulai, " + makan
//}
//print(abc(makan: "Kambing"))

//func greet(person: String, alreadyGreeted: Bool) -> String{
//    if alreadyGreeted{
//        return "Subhannallah " + person
//    } else {
//        return "Tobatlah " + person
//    }
//}
//print(greet(person:"brother" , alreadyGreeted: true))

//func printAndCount(string: String) -> Int{
//    print(string)
//    return string.count
//}
//func printWithoutCounting(string : String) {
//    let _ = printAndCount(string : string)
//}
//printAndCount(string: "hello, world!")
//printWithoutCounting(string: "hello, world")

//func minMax(array: [Int]) -> (min: Int, max : Int){
//    var currentMin = array[0]
//    var currentMax = array[0]
//    for value in array[1..<array.count]{
//        if value < currentMin {
//            currentMin = value
//        } else if value > currentMax {
//            currentMax = value
//        }
//    }
//    return (currentMin, currentMax)
//}
//let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
//print("Min is \(bounds.min), Max is \(bounds.max)")


//func aritmethicMean (_ numbers:Double...) -> Double {
//    var total: Double = 0
//    for number in numbers {
//        total += number
//    }
//    return total / Double(numbers.count)
//}
//print(aritmethicMean(1,2,3,4,5))


//func swapTwoInts (_ a: inout Int, _ b: inout Int){
//    let temporaryA = a
//    a = b
//    b = temporaryA
//}
//
//var someInt = 5
//var anotherInt = 102
//
//swapTwoInts(&someInt,&anotherInt)
//print("SomeInt now : \(someInt), AnotherInt now : \(anotherInt)")

//func addTwoInts(_ a:Int, _ b:Int) -> Int {
//    return a + b
//}
////var tambahAngka: (Int, Int) -> Int = addTwoInts
//
//print(addTwoInts(5,5))

func stepForward(_ input: Int) -> Int{
    return input + 1
}
func stepBackward(_ input: Int) -> Int{
    return input - 1
}
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}
var currentValue = 3
let moveNearToZero = chooseStepFunction(backward: currentValue > 0)

print("counting to zero")
while currentValue != 0 {   
    print("\(currentValue)...")
    currentValue = moveNearToZero(currentValue)
}
print("zero")
