import UIKit

//protocol Product {
//    func getName() -> String
////    func getExpiredDate() -> Date
//
//    func getProductInfo()
//}
//
//protocol FoodProduct : Product{
//    func getExpiredDate() -> Date
//}
//
//class Vegetable : FoodProduct {
//    func getName() -> String {
//        return "Brocoli"
//    }
//
//    func getExpiredDate() -> Date {
//        return Date()
//    }
//}
//
//class Smartphone : Product {
//    func getName() -> String {
//        return "iphone"
//    }
//}

//protocol VehicleInterface {
//    func drive()
//    func stop()
//    func refuel()
////    func openDoors()
//}
//protocol DoorInterface {
//    func openDoors()
//}
//class Motorcycle : VehicleInterface {
//    //Bisa diterapkan
//    func drive() {}
//    func stop() {}
//    func refuel() {}
//    //Tidak bisa
////    func openDoors() {}
//}
//class Car : VehicleInterface, DoorInterface {
//    func drive() {}
//    func stop() {}
//    func refuel() {}
//    func openDoors() {}
//}

protocol EngineInterface {
    func start()
}
class Car {
    var engine: EngineInterface
    init(engine : EngineInterface){
        self.engine = engine
    }
    func start() {
        engine.start
    }
}

class PetroEngine : EngineInterface {
    func start() {
    }
}
class HybridEngine : EngineInterface {
    func start() {
    }
}
class DieselEngine : EngineInterface {
    func start() {
    }
}

let petrolEngine = PetroEngine()
let petroCar = Car(engine: petrolEngine)
petroCar.start()

let hybridEngine = HybridEngine()
let hybridCar = Car(engine: HybridEngine())
hybridCar.start()

let dieselEngine = DieselEngine()
let dieselCar = Car(engine: DieselEngine())
dieselCar.start()
