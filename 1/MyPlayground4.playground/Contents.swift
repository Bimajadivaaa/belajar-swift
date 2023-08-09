import UIKit

let finalSquare = 25
// membuat papan permainan
var board = [Int] (repeating: 0, count: finalSquare + 1)


//Tangga
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02;

//Ular
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08;

var square = 0
var diceRoll = 0

repeat {
    //berpindah keatas atau kebawah untuk ular atau tangga
    square += board[square]
    //Mengocok dadu
    diceRoll += 1

    //jika dadu sama dengan 7, maka otomatis akan berubah menjadi 1 kembali
    if diceRoll == 7 {
        diceRoll = 1
    }
    
    //menggeser karakter sesuai angka dadu
    square += diceRoll
    
//    if square < board.count {
//        //jika masih dalam papan permainan
//        //maka pastikan apakah karakter bertemu dengan ular tangga apa tidak
//
//        square += board[square]
    print(square)
} while square < finalSquare
print("Game over!")
