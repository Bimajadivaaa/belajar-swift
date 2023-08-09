import UIKit

//var customerInLine = ["Ewa", "Barry", "Daniella"]

//func serve(customer customerProvider: @autoclosure () -> String) {
//    print("Now serving \(customerProvider())")
//}
//serve(customer: customerInLine.remove(at: 0))

var customerInLine = ["Barry", "Daniella"]
var customerProviders : [() -> String] = []

func collectCustomerProviders(_ customerProvider: @autoclosure @escaping() -> String) {
    customerProviders.append(customerProvider)
}

collectCustomerProviders(customerInLine.remove(at: 0))
collectCustomerProviders(customerInLine.remove(at: 0))

print("Collected \(customerProviders.count) closure")

for customerProvider in customerProviders {
    print("Now serving \(customerProvider())")
}
print("Customer count \(customerInLine.count)")
