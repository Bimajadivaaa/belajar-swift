import UIKit

let kalimat = "Pengen Iphong"
let hapusKalimat: [Character] = ["h"]
var output = ""

for character in kalimat{
    if hapusKalimat.contains(character){
        continue
    }
    output.append(character)
}
print(output)
    



