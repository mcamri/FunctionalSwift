import UIKit


let numbers = [1,2,3,4,5]

func addNumbers(numbers: [Int]) -> Int {
    return numbers.reduce(0){ (sum, number) in sum + number}
}

let total = addNumbers(numbers: numbers)
print(total)

