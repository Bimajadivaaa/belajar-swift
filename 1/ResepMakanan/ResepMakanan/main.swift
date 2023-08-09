//
//  main.swift
//  ResepMakanan
//
//  Created by MacBook Air on 02/08/23.
//

import Foundation

print("Selamat datang di Dicoding Resto")
print("Mari membuat makanan")

print("Apa yang anda akan buat ?"); let food = readLine() ?? ""
print("Masukkan jumlah item yang akan dimasukkan", terminator: ":"); let newItem = readLine() ?? ""

//konversi jumlah item yang dibutuhkan
if let totalItem: Int = Int(newItem){
    var recipe = [String]()

    for index in 1...totalItem{
        print("Masukkan ke item \(index)",terminator: ":"); let newItem =  String(readLine() ?? "")
        recipe.append(newItem)
    }
    print("Berapa lama proses memasak dilakukan?"); let time = readLine() ?? ""

    print("Anda akan membuat \(food) membutuhkan waktu masak selama \(time) dengan resep:")
          for (index, value) in recipe.enumerated(){
            print("\(index + 1). \(value)")
    }
} else {
        print("input tidak valdi")
}
    

//if let totalItem: Int = Int(newItem){
//    var recipe = [String]()
//
//    for index in 1...totalItem{
//        print("Masukkanlah ke item \(index)", terminator: ": "); let newItem = String(readLine() ?? "")
//        recipe.append(newItem)
//    }
//
//    print("Berapa lama proses memasak dilakukan?"); let time = readLine() ?? ""
////    recipe.sort()
//
//    print("Anda akan membuat \(food) selama \(time) dengan resep:")
//    for (index, value) in recipe.enumerated(){
//        print("\(index + 1). \(value)")
//    }
//} else {
//    print("Input tidak valdi")
//}




