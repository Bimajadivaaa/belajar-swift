import UIKit

//enum CompassPoint{
//    case north
//    case south
//    case east
//    case west
//}
//
//var directionToHead = CompassPoint.west
//
//directionToHead = .south
//
////Memastikan nilai dengan switch
//switch directionToHead {
//case .north:
//    print("Lot of planets have a north")
//case .south:
//    print("Watch out for penguins")
//case .east:
//    print("Where the sun rises")
//case .west:
//    print("Where the skies are blue")
//}


//
//enum planet {
//    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
//}
//
//let somePlanet = planet.earth
//switch somePlanet {
//case .earth:
//    print("Mostly harmless")
//default:
//    print("Not a safe place for humans")
//}

//enum Beverage: CaseIterable {
//    case coffee, tea, juice
//}
//
//let numberOfChoices = Beverage.allCases.count
//print("\(numberOfChoices) beverages available")

//enum Barcode {
//    case upc(Int,Int,Int,Int)
//    case qrCode(String)
//}
//var productBarcode = Barcode.upc(1, 24984, 13758, 9)
//productBarcode = .qrCode("DICODING INDONESIA")
//
//switch productBarcode {
//case let .upc(numberSystem, manufacturer, product, check):
//    print("UPC : \(numberSystem), \(manufacturer), \(product), \(check)")
//case let .qrCode(productCode):
//    print("QR Code : \(productCode).")
//}

indirect enum ArithmeticExpression{
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression{
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) + evaluate(right)
    }
}
print(evaluate(product))
