import UIKit

var someInts = [Int]()
someInts.append(3)

print(someInts)

someInts = []
print("someInts skrg 0")

//array dengan nilai default
//var threedoubles = Array(repeating: 0.1, count: 3)
//var anotherThreedoubles = Array(repeating: 0.2, count: 2)
//print(threedoubles + anotherThreedoubles)
//
//var belanja: [String] = ["telor", "susu","coklat"]
//belanja.append("ayam")
//print(belanja)
//
//var belanjaMakan = ["telor", "babi","kambing"]
//belanjaMakan += ["nasi","toge"]
//print(belanjaMakan.count)
//print(belanjaMakan)

var belanja = ["asbak", "toge", "biskuit"]
//var firstItem = belanja[0]
//belanja[1] = "sate ayam"
belanja[0...1] = ["long", "before"]
belanja.insert("padang", at: 1)
let remove = belanja.remove(at: 1)
let removeApples = belanja.removeLast()
//belanja[belanja.count] = "garem"
print(belanja)

//var makanan = ["ayam", "toge", "sapi"]
////for item in makanan{
////    print(item)
////}
//for (keys, value) in makanan.enumerated(){
//    print(keys + 1,".",value)
//}

//var letters = Set<Character>()
//letters.insert("A")
//print(letters.count)

//var minuman: Set<String> = ["kopi","tebu","luwak"]
//print(minuman.count)


var favoriteDessert: Set = ["eS Kulkul", "Anakv kue bolu", "roti"]
for item in favoriteDessert.sorted(){
    print(item)
}

var airports = ["ABC" : "garuda", "GRD" : "Airlanes"]

//for airportCode in airports.keys{
//    print(airportCode)
//}
//
//for planes in airports.values{
//    print(planes)
//}

let airportcodes = [String](airports.keys)
print(airportcodes)

let planes = [String](airports.values)
print(planes)







