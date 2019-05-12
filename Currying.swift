import UIKit

//currying: pass one parameter only

func add(first:Int, second:Int) -> Int {
    return first + second
}

func makeAdd(first:Int) -> (Int) -> Int {
    return { (second) in
        return first + second
    }
}

let addBy2 = makeAdd(first: 2)

let res = addBy2(3)

let numbers = [1,2,3,4,5]

let numbersAddBy2 = numbers.map(addBy2)

print(res)
print(numbersAddBy2)


