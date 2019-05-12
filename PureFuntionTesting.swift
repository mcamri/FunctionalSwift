import UIKit


enum Status {
    case ordered
    case sent
    case delivered
}

struct Give {
    var status:Status = .ordered
    
    func todo(status:Status) -> String {
        switch status {
        case .ordered:
            return "wrap it!"
        case .sent:
            return "monitor it!"
        case .delivered:
            return "celebrate and drink coffee!"
        }
    }
}


class GiveTest {
    func testTodo_Ordered() {
        "wrap it!" == Give().todo(status: .ordered)
    }
    
    func testTodo_Sent() {
        "wrap it!" == Give().todo(status: .ordered)
    }
    
    func testTodo_Delivered() {
        "wrap it!" == Give().todo(status: .ordered)
    }
}

//summary
//pass state to function instead of access the state directly from a function
//easier to test
//pure function: no side effect


