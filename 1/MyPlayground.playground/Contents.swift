import UIKit

var greeting = "Hello, playground"
let maximumNumberOfLoginAttemps = 10 //Nilai Maksimum
var currentLoginAttemps = 0 //Jumlah upaya login yang dilakukan

var x = 0.0, y = 0.0, z = 0.0
var welcomeMessage: String // deklarasi tipe data string
welcomeMessage = "Hello world"
print(welcomeMessage)

var red, green, blue : Double

//func print(_items: Any..., separator: String = " ", terminator : String : "\n")

let twoThousand: UInt16 = 2_000
let one:UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)
print(twoThousandAndOne)

//let three = 3;
//let point = 0.14159
//let pi = Double(three) + point
//print(pi)

let three = 3;
let point = 0.14159
let pi = Double(three) + point
let intpi = Int(pi)
print(intpi)


//typealias NewType = ExistingType
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.max
print(maxAmplitudeFound)

//let http404error = (404, "not found"    )
//let (statuscode, statuserror) = http404error
//print(statuscode, statuserror)

let status = (statusCode : 404, statusError : "not found")
print(status.statusCode)
print(status.statusError)

let name = ["Dimas", "Anjay", "Mabar"]
for name in name[...1]{
    print(name)
}

var dicoding = "Dicoding Indonesia"

dicoding.insert("!", at: dicoding.endIndex)
dicoding.insert(contentsOf:" mantab", at: dicoding.index(before: dicoding.endIndex))
dicoding.remove(at: dicoding.index(before: dicoding.endIndex))
print(dicoding)

let range = dicoding.index(dicoding.endIndex, offsetBy: -6)..<dicoding.endIndex
dicoding.removeSubrange(range)
print(dicoding)

