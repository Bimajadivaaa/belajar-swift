import UIKit

//struct Fahrenheit {
//    var temperature : Double
//    init(){
//        temperature = 32.0
//    }
//}
//var f = Fahrenheit()
//print("The default paremeter is \(f.temperature) fahrenheit")

struct Celcius {
    var temperatureInCelcius : Double
    
    init(fromFahrenheit fahrenheit: Double){
        temperatureInCelcius = (fahrenheit - 32.0) / 1.8
    }
    
    init(fromKelvin kelvin: Double){
        temperatureInCelcius = kelvin - 273.15
    }
}

let boilingPointOfWater = Celcius(fromFahrenheit: 212.0)
print(boilingPointOfWater.temperatureInCelcius)


let freezingPointOfWater = Celcius(fromKelvin: 273.15)
print(freezingPointOfWater.temperatureInCelcius)
