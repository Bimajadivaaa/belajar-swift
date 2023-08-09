//
//  main.swift
//  DaftarBuah
//
//  Created by MacBook Air on 03/08/23.
//

import Foundation

var listFruits = [String]()
var isRunning = true

//Mendapatkan input dari pengguna
func getInput(message: String) -> String? {
    print(message, terminator: " :")
    return readLine();
}

//Mendapatkan input dari pengguna dengan tipe data int
func getInputInt(message: String) -> Int? {
    if let inputString = getInput(message: message){
        return Int(inputString)
    } else {
        return 0
    }
}

//Menampilkan semua daftar buah
func showAllFruit() {
    if listFruits.isEmpty {
        print("Belum ada buah di daftar")
    } else {
        print("Daftar Buah :")
        for (index, value) in listFruits.enumerated() {
            print("[\(index + 1)] \(value)")
        }
    }
}

//Menambah nama buah
func insertFruit(){
    if let name = getInput(message: "Masukkan nama buah"){
        listFruits.append(name)
        print("Berhasil menambahkan buah")
    } else {
        insertFruit()
        print("Tidak Valid")
    }
}

//Mengubah nama buah berdasarkan posisi
func editFruit(){
    showAllFruit()
    print("-----------")
    if let position = getInputInt(message: "Pilih posisi mana yang akan diganti") {
        if position <= listFruits.count && position > 0 {
            if let name = getInput(message: "Masukkan nama buah"){
                listFruits[position - 1] = name
                print("Berhasil mengubah posisi buah")
            } else {
                showMenu()
            }
        } else {
            editFruit()
            print("Input tidak valid")
        }
    }
}
    
    
    //Menghapus buah
    func deleteFruit(){
        showAllFruit()
        if let position = getInputInt(message: "Pilih posisi buah yang akan dihapus") {
            if position <= listFruits.count && position > 0 {
                listFruits.remove(at: position - 1)
                print("Berhasil menghapus buah")
            } else {
                showMenu()
            }
        } else {
            deleteFruit()
            print("Input tidak valid")
        }
    }
    
    //Menampilkan menu
func showMenu(){
    print("Selamat datang di dicoding market")
    print("=============MENU=============")
    print("[1] Tampilkan semua buah")
    print("[2] Tambah item buah")
    print("[3] Ubah item buah")
    print("[4] Hapus item buah")
    print("[5] Keluar")
    
    if let position = getInputInt(message: "Silahkan pilih menu di atas"), position <= 5 && position > 0 {
        print("-------")
        switch position {
        case 1:
            showAllFruit()
        case 2:
            insertFruit()
        case 3:
            editFruit()
        case 4:
            deleteFruit()
        case 5:
            isRunning = false
            print("Terimakasih, silahkan datang kembali")
        default:
            print("Pilihan anda tidak ada")
        }
    } else {
        print("Menu tidak valid, silahkan coba lagi")
    }
}
while isRunning{
    showMenu()
}
    
