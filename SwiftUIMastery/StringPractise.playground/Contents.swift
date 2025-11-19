import UIKit
import Foundation

let square = sqrt(4.0)
let power = pow(2.0, 2.0)
let maximum = (square, power)

// String
let name = "Practise"
print(name.startIndex)
print(name.endIndex)


// practise loop

let menuItems = ["Burger", "Pizza", "Coke"]
for item in menuItems {
    print(item)
}

var distance = 10
while distance > 0 {
    print(distance)
    distance -= 1
}

var payment = false
repeat {
    print("trying payment")
} while payment == false

var payment = false
repeat {
    print("payment successful")
} while payment == false




