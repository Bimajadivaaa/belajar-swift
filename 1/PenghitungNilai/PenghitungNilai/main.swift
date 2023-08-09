//
//  main.swift
//  PenghitungNilai
//
//  Created by MacBook Air on 03/08/23.
//

import Foundation

print("Masukkan total nilai yang akan dinilai", terminator: ":"); let total = readLine() ?? ""
print("--------------------------------------")

//Memastikan input sesuai
if let totalItem: Int = Int(total){
    var allValues = [Int]()
    
    //Mendapatkan nilai setiap item
    for index in 1...totalItem{
        print("Masukkanlah item ke \(index)", terminator: ":"); let newItem = Int(readLine() ?? "") ?? 0
        allValues.append(newItem)
    }
    
    print("--------------------------------------")
    
    //Menjumlah semua nilai yang ada
    var sum: Int = 0
    for value in allValues {
        sum += value
    }
    
    //Mendapatkan nilai rata rata
    var average = sum / totalItem
    var grade = ""
    
    //Mendapatkan Grade dari nilai rata-rata
    
    switch average{
    case 0...40 :
        grade = "E"
    case 41...50 :
        grade = "D"
    case 51...60 :
        grade = "C"
    case 61...70 :
        grade = "C+"
    case 71...80 :
        grade = "B"
    case 81...90 :
        grade = "B+"
    case 90...100 :
        grade = "A"
    default :
        grade = "Tidak valid"
    }
    
    
    //Mencetak nilai akhir
    if grade != "Tidak valid" {
        print("Anda mendapatkan Grade Nilai \(grade) dari \(total)")
        print("Anda mendapatkan dengan total \(sum) dari rata-rata nilai \(average)")
    } else {
        print("Nilai tidak valid")
    }
} else {
    print("Input tidak valid")
}

