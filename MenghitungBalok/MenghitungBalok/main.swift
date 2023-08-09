//
//  main.swift
//  MenghitungBalok
//
//  Created by MacBook Air on 02/08/23.
//

import Foundation

//let width = 2.0
//let height = 3.0
//let length = 4.0

print("Masukkan lebar balok = "); let widthInput = readLine()
print("Masukkan tinggi balok = "); let heightInput = readLine()
print("Masukkan panjang balok = "); let lengthInput = readLine()

if let length = Double(lengthInput ?? "0"),
   let width = Double(widthInput ?? "0"),
   let height = Double(heightInput ?? "0") {
    
    let volume = length * height * width
    let surfaceArea = 2 * ((width * length) + (width * length) + (height * length))
    let circumference = 4 * (width + length + height)
    
    print("Anda memiliki balok dengan :")
    print("1. Lebarnya adalah \(width) cm")
    print("2. Tingginya adalah \(height) cm")
    print("3. Panjangnya adalah \(length) cm")
    print("4. Volumenya adalah \(volume) cm3")
    print("5. Luas Permukaannya adalah \(surfaceArea) cm2")
    print("6. Kelilingnya adalah \(circumference) cm")
    print("------------------------------------------")
} else {
    print("input tidak valid")
}
