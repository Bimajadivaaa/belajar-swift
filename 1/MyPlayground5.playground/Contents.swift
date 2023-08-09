import UIKit

let approximateCount = 62
let countedThings = "moons orbiting saturn"
let naturalCount : String

switch approximateCount {
case 0:
    naturalCount = "No"
case 1..<5:
    naturalCount = "a few"
case 1..<12:
    naturalCount = "several"
case 1..<100:
    naturalCount = "dozens of"
case 1..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")

