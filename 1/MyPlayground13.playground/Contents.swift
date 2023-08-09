import UIKit

//struct Resolution{
//    var width = 0
//    var height = 0
//}
////
////let someResolution = Resolution()
////print("The width of resolution is \(someResolution.width)")
//
//class VideoMode{
//    var resolution = Resolution()
//    var interlaced = false
//    var frameRate = 0.0
//    var name : String?
//}
//
//let someVideoMode = VideoMode()
//print(someVideoMode.resolution.width)

//struct FixedLengthRange {
//    var firstValue : Int
//    var length : Int
//}
//
//var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 0)
//print("Jangkauan tersebut memiliki nilai \(rangeOfThreeItems)")
//
//rangeOfThreeItems.firstValue = 6
//print("Jangkauan tersebut memiliki nilai \(rangeOfThreeItems)")

//struct Cuboid{
//    var width = 0.0, height = 0.0, depth = 0.0
//    var Volume: Double{
//        return width * height * depth
//    }
//}
//
//let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 10.0)
//print(fourByFiveByTwo.Volume)


//struct SomeStructure {
//    static var storedTypeProperty = "Some Value."
//    static var computedTypeProperty: Int{
//        return 1
//    }
//}
//
//enum SomeEnumeration {
//    static var storedTypeProperty = "Some Value."
//    static var computedTypeProperty: Int{
//        return 6
//    }
//}
//
//class SomeClass {
//    static var storedTypeProperty = "Some Value."
//    static var computedTypeProperty: Int{
//        return 27
//    }
//    class var overrideableComputedTypeProperty: Int{
//        return 107
//    }
//}
//
//print(SomeStructure.storedTypeProperty)
//
//SomeStructure.storedTypeProperty = "Another Value"
//print(SomeStructure.storedTypeProperty)
//print(SomeEnumeration.computedTypeProperty)
//print(SomeClass.computedTypeProperty)


//class Counter {
//    var count = 0
//    func increment() {
//        count += 1
//    }
//
//    func incrementBy(amount: Int){
//        count += amount
//    }
//
//    func reset(){
//        count = 0
//    }
//}
//let counter = Counter()
//counter.increment()
//counter.incrementBy(amount: 5)
//counter.reset()

//struct Point {
//    var x = 0.0, y = 0.0
//    func isToTheRightOf(x: Double) -> Bool {
//        return self.x > x
//    }
//}
//
//let somePoint = Point(x: 4.0, y:5.0)
//if somePoint.isToTheRightOf(x: 1.0){
//    print("this point is to the right of the line where x == 10")
//}

//struct TimesTable{
//    let multiplier : Int
//    subscript(index: Int) -> Int{
//        return multiplier * index
//    }
//}
//let threeTimesTable = TimesTable(multiplier: 3)
//print("six time three is \(threeTimesTable[6])")

//struct Matrix{
//    let rows: Int, columns: Int
//    var grid: [Double]
//
//    init(rows: Int, columns: Int){
//        self.rows = rows
//        self.columns = columns
//        grid = Array(repeating: 0.0, count: rows * columns)
//    }
//
//    func indexIsValid(row: Int, column: Int) -> Bool {
//        return row >= 0 && row < rows && column >= 0 && column < columns
//    }
//
//    subscript(row: Int, column: Int) -> Double{
//        get{
//            assert(indexIsValid(row: row, column: column),"Index out of range")
//            return grid[(row * columns) + column]
//        }
//        set {
//            assert(indexIsValid(row: row, column: column), "Index out of range")
//            grid[(row * columns) + column] = newValue
//        }
//    }
//}
//
//var matrix = Matrix(rows: 2, columns: 2)
//matrix[0,1] = 1.5
//matrix[1,0] = 3.2
//
//print(matrix)


class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    
    func makeNoise(){
        //
    }
}
class Bicycle: Vehicle {
    var hasBasket = false
}
class Tandem: Bicycle {
    var currentNumberOfPassenggers = 0
}
class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo")
    }
}

//let bicycle = Bicycle()
//bicycle.hasBasket = true
//bicycle.currentSpeed = 15.0
//print("\(bicycle.description)")

//let tandem = Tandem()
//tandem.hasBasket = true
//tandem.currentNumberOfPassenggers = 2
//tandem.currentSpeed = 22.0
//print(tandem.description)
let train = Train()
train.makeNoise()
