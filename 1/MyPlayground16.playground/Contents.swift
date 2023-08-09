import UIKit

//class DataRepository {
//    private var data = [Any]()
//
//    func setData(){
//        let response =
//        data.removeAll()
//        data.append(response.data)
//    }
//
//    func getData() -> [Any] {
//        return data
//    }
//}

//class Seller {
//    private let _id : String
//    private let _name : String
//
//    init(id: String, name: String) {
//        _id = id
//        _name = name
//    }
//}
//
//class user {
//    private let _id : String
//    private let _name : String
//    private let _seller : [Seller]
//
//    init(id: String, name: String, seller: [Seller]) {
//        _id = id
//        _name = name
//        _seller = seller
//    }
//}

//class Order {
//    func calculateTotalSum() {
//
//    }
//
//    func getItems() {
//
//    }
//
//    func getItemCount() {
//
//    }
//
//    func addItem(item: Item) {
//
//    }
//
//    func deleteItem(item: Item) {
//
//    }
//
//    func printOrder() {
//
//    }
//
//    func showOrder() {
//
//    }
    
//    func getDailyHistory() {
//
//    }
//
//    func getMonthlyHistory() {
//
//    }
//}
//class Item{
//
//}
//
//class Order {
//    calculateTotalSum() {}
//    getItems() {}
//    getItemCount() {}
//    addItem(item) {}
//    deleteItem(item) {}
//}
//
//class OrderHistory {
//    getDailyHistory() {}
//    getMonthlyHistory() {}
//}

//class OrderPreview {
//    printOrder(order : Order) {}
//    showOrder(order : Order) {}
//}
//
//let item = Item()
//let order = Order()
//order.addItem(Item: item)
//let repository = OrderRepository()
//repository.getDailyHistory()
//let viewer = OrderViewer()
//viewer.printOrder(order: order)

class Cinema {
    func calculateAdminFee() -> Double{
        return 0.0
    }
}

class StandardCinema : Cinema {
    var price : Double
    init(price: Double) {
        self.price = price
    }
    
    override func calculateAdminFee() -> Double {
        return price * 10 / 100
    }
}

class DeluxeCinema : Cinema {
    var price : Double
    init(price: Double) {
        self.price = price
    }
    
    override func calculateAdminFee() -> Double {
        return price * 12 / 100
    }
}

class PremiumCinema : Cinema {
    var price : Double
    init(price: Double) {
        self.price = price
    }
    
    override func calculateAdminFee() -> Double {
        return price * 20 / 100
    }
}
    
class CoupleCinema : Cinema{
    var price : Double
    init(price: Double){
        self.price = price
    }
    
    override func calculateAdminFee() -> Double {
        return price * 15 / 100
    }
}
//class CinemaCalculations {
//
//    func calculateAdminFee(cinema : Cinema) -> Double {
//        if (cinema is StandardCinema){
//            return cinema.price * 10 / 100
//        } else if (cinema is DeluxeCinema){
//            return cinema.price * 12 / 100
//        } else if (cinema is PremiumCinema){
//            return cinema.price * 20 / 100
//        } else{
//            return 0.0
//        }
//    }
//}

let standartCinema = StandardCinema(price: 12000)
let adminFee = standartCinema.calculateAdminFee()
print(adminFee)
