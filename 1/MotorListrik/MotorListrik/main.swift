//
//  main.swift
//  MotorListrik
//
//  Created by MacBook Air on 05/08/23.
//

import Foundation

//Mendapatkan nilai string dari pengguna
func getInput(message: String) -> String? {
    print(message, terminator: ":")
    return readLine()
}

//Mendapatkan nilai integer dari pengguna
func getInputInt(message: String) -> Int? {
    if let inputString = getInput(message: message) {
        return Int(inputString)
    } else {
        return nil
    }
}

//Mengatur kecepatan
var speedTotal = 0

//Closure untuk mendapatkan kecepatan
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    func incrementer() -> Int {
        speedTotal += amount
        return speedTotal
    }
    return incrementer
}

//Closure untuk mengurangi kecepatan
func makeDecrementer(forDecrement amount: Int) -> () -> Int {
    func decrementer() -> Int {
        speedTotal -= amount
        return speedTotal
    }
    return decrementer
}

//Menentukan nilai penambahan dan pengurangan
let incrementByTen = makeIncrementer(forIncrement: 10)
let decrementByTen = makeDecrementer(forDecrement: 10)

//Menyalakan mesin motor
func turnOnEngine(){
    print("Hidupkan mesin....")
    print("Selamat datang di motor listrik dicoding")
    print("Brem brem brem brem")
}

//Mematikan mesin motor
func turnOffEngine(){
    print("Ciiiiiitt....")
    print("Motor berhenti!!")
}

//Menampilkan kecepatan saat ini
func showSpeed(){
    print("Kecepatan saat ini \(speedTotal)")
    print("Ngengggg")
}

//Memberikan aksi ke motor listrik
func action() {
    print("--------------------")
    print("Ayo beraksi")
    print("[1] Tambahkan Kecepatan")
    print("[2] Kurangi Kecepatan")
    print("[3] Matikan Mesin")
    
    if let state = getInputInt(message: "Masukkan aksi Anda") {
        switch state {
        case 1 :
            speedTotal = incrementByTen()
            showSpeed()
            action()
        case 2 :
            if speedTotal > 0 {
                speedTotal = decrementByTen()
                showSpeed()
                action()
            } else {
                turnOffEngine()
                break
            }
        case 3:
            turnOffEngine()
            break
        default:
            break
        }
    } else {
        print("Input anda tidak valid")
    }
}

//Mulai program
turnOnEngine()
action()


