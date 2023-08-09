//
//  main.swift
//  BermainKata
//
//  Created by MacBook Air on 02/08/23.
//

import Foundation

print("Masukkan nama depan anda :"); let firstName = (readLine() ?? "")
print("Masukkan nama belakang anda :"); let lastName = (readLine() ?? "")

print("Berikut ini operator yang digunakan : ")

let concatenationString = firstName + lastName
print("1. String concatenation Operator : \"\(concatenationString)\"")

//Operator mutability

var mutabilityString = ""
mutabilityString += firstName
mutabilityString += lastName
print("2. String mutability Operator : \"\(mutabilityString)\"")

//Operator comparison
var comparisonString = ""
if firstName == lastName {
    comparisonString = String(true)
} else {
    comparisonString = String(false)
}
print("3. String comparison Operator : \"\(comparisonString)\"")

//berikut fungsi2 yang digunakan

print("Berikut ini fungsi yang digunakan : ")

//gabungkan nama depan dan nama belakang
let fullName = firstName + " " + lastName

//fungsi isEmpty
let empty = firstName.isEmpty || lastName.isEmpty
print("1. Fungsi is Empty : \"\(empty)\"")

//fungsi startIndex
let startIndex = fullName[fullName.startIndex]
print("2. Fungsi startindex : \"\(startIndex)\"")

//fungsi index
let index = fullName[fullName.index(after: fullName.startIndex)]
print("3. Fungsi index : \"\(index)\"")

//fungsi indexing lainnya
let indexLainnya = fullName[fullName.index(fullName.startIndex, offsetBy: 5)]
print("4. Fungsi index lainnya : \"\(indexLainnya)\"")

//fungsi end index
let endIndex = fullName[fullName.index(before: fullName.endIndex)]
print("5. Fungsi endIndex : \"\(endIndex)\"")

//fungsi insert
var insert = fullName
insert.insert("!", at: insert.endIndex)
print("6. Fungsi insert : \"\(insert)\"")

//fungsi remove
var remove = insert
remove.remove(at: remove.index(before: remove.endIndex))
print("7. Fungsi remove : \"\(remove)\"")

//fungsi append
var appendKata = firstName
appendKata.append(lastName)
print("8. Fungsi append : \"\(appendKata)\"")

//fungsi count
var kata = fullName.count
print("9. Fungsi length : \"\(kata)\"")


