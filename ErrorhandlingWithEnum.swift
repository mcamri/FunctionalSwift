import UIKit

//error handling with enum

struct DevideByZeroError:Error {
    
}

enum Result {
    case success(Any)
    case failure(Error)
}

func devide(top: Int, bottom:Int) -> Result {
    if bottom == 0 {
        return .failure(DevideByZeroError())
    }
    return .success(top/bottom)
}

let result = devide(top: 1, bottom: 2)

switch result {
case .success(let value):
    print(value)
case .failure(let error):
    print(error)
}

