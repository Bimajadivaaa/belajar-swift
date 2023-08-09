//
//  main.swift
//  MemberDicoding
//
//  Created by MacBook Air on 06/08/23.
//

import Foundation

//Input
func getInputString(message: String) -> String {
    print(message, terminator: ":")
    return readLine() ?? ""
}

//Input INT
func getInputInt(message: String) -> Int{
    return Int(getInputString(message: message)) ?? 0
}

//Protocol PersonProtocol
protocol PersonProtocol {
    var firstName: String {
        set get
    }
    var lastName: String {
        set get
    }
    var address: String {
        set get
    }
    func fullname() -> String
}

//Implementasi Person Protocol ke class person
class Person: PersonProtocol {
    var firstName: String
    var lastName: String
    var address: String
    
    init(firstName: String, lastName : String, address : String){
        self.firstName = firstName
        self.lastName = lastName
        self.address = address
    }
    
    func fullname() -> String {
        var parts : [String] = []
        parts += [firstName]
        parts += [lastName]
        return parts.joined(separator: " ")
    }
}

//Protocol studentProtocol
protocol StudentProtocol {
    var school : String {set get}
    func getInformation() -> String
}

//Implementasikan studentProtocol dan person ke kelas student
class Student: Person, StudentProtocol{
    var school: String = ""
    
    func getInformation() -> String {
        return "Perkenalkan nama saya \(fullname()), saya sekolah di \(school).\nMari belajar bersama"
    }
}

print("Selamat datang di aplikasi dicoding member")
print("----------------------------------------")

//Mendapatkan Input dari pengguna
let firstName = getInputString(message: "Masukkan nama depan kamu")
let lastName = getInputString(message: "Masukkan nama belakang kamu")
let address = getInputString(message: "Masukkan alamat kamu")
let school = getInputString(message: "Masukkan nama kampus kamu")

//Menginisialisasi kelas student
let member = Student(firstName: firstName, lastName: lastName, address: address)
member.school = school
print("------------------")

//Mendapatkan detail informasi siswa
print(member.getInformation())
print("------------------")
print("Terimakasih, selamat datang kembali")
