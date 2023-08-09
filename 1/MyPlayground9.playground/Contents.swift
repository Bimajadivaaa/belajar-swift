import UIKit

func chooseStepBackward (backward: Bool) -> (Int) -> Int{
    func stepForward(input: Int) -> Int{
        return input + 1
    }
    func stepBackward(input: Int) -> Int{
        return input - 2
    }
    return backward ? stepBackward : stepForward
}

var currentNumber = -4
let moveToZero = chooseStepBackward(backward: currentNumber > 0)

while currentNumber != 0{
    print("\(currentNumber)...")
    currentNumber = moveToZero(currentNumber)
}
print("Zero")
