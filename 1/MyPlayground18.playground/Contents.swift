import UIKit

protocol Vehicle {
    associatedtype T
    func accelerate()
    func brake()
    func refill(source: T)
}
protocol EngineInterface {
    func move()
}

protocol StorageInterface {
    associatedtype T
    func fill(source: T)
    func getSource() -> T
}

class Car<T>: Vehicle {
    
    var engine : EngineInterface
    var storage : any StorageInterface
    
    init(engine: EngineInterface, storage : any StorageInterface) {
        self.engine = engine
        self.storage = storage
    }
    
    func accelerate() {
        self.engine.move()
    }
    
    func brake() {
        print("Stop")
    }
    
    func refill(source: T) {
        self.storage.fill(source: source)
    }
}

class PetrolEngine : EngineInterface {
    
    var oilPipe : OilPipe
    var piston : Piston
    
    init(oilPipe: OilPipe, piston : Piston){
        self.oilPipe = oilPipe
        self.piston = piston
    }
    
    func move() {
        let oil: Oil = oilPipe.suckOil()
        let energy : Energy = oil.burn()
        energy.push(piston: piston)
    }
}

class Piston {
    func move(){
        
    }
}

class OilPipe {
    func suckOil() -> Oil {
        return Oil()
    }
}

class Oil {
    func burn() -> Energy {
        return Energy()
    }
}

class Energy {
    func push(piston: Piston){
        piston.move()
    }
}

class Tank : StorageInterface {
    typealias T = Oil
    
    var oil : Oil
    
    init(){
        self.oil = Oil()
    }
    
    func fill(source: Oil) {
        self.oil = source
    }
    
    func getSource() -> Oil {
        return self.oil
    }
}
class ElectricEngine : EngineInterface {
    
    var speedController : SpeedController
    
    init(speedController: SpeedController) {
        self.speedController = speedController
    }
    
    func move() {
        self.speedController.control()
    }
}

class SpeedController {
    
    var bms : BatteryManagementSystem
    var motor : ElectricMotor
    
    init(bms: BatteryManagementSystem, motor: ElectricMotor){
        self.bms = bms
        self.motor = motor
    }
    
    func control(){
        let battery = bms.getBattery()
        motor.rotate(battery: battery)
    }
}

class BatteryManagementSystem {
    func getBattery() -> Battery {
        return Battery(electrons: Electrons())
    }
}

class ElectricMotor {
    func rotate(battery : Battery){
        
    }
}

class Electrons {}

class Battery : StorageInterface {
    typealias T = Electrons
    
    var electrons = Electrons
    
    init(electron: Electrons){
        self.electrons = electrons
    }
    
    func fill(source: Electrons) {
        
    }
    
    func getSource() -> Electrons {
        return self.electrons
    }
}



let tank = Tank()
let oilPipe = OilPipe()
let piston = Piston()
let petrolEngine = PetrolEngine(oilPipe: oilPipe, piston: piston)
let petrolCar = Car<Oil>(engine: petrolEngine, storage: tank)
let oil = Oil()
petrolCar.accelerate()
petrolCar.brake()


let electrons = Electrons()
let battery = Battery(electron: Electrons)
let speedController = SpeedController(bms: BatteryManagementSystem(), motor: ElectricMotor())
let electricEngine = ElectricEngine(speedController: SpeedController)
let electricCar = Car<Electrons>(engine: EngineInterface, storage: StorageInterface, storage: battery)
electricCar.refill(source: electrons)
electricCar.accelerate()
electricCar.brake()
