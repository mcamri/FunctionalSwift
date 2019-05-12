import UIKit

//design good types

typealias Credit = Int

struct Account {
    var credit = 1
}

func credit(account: Account) -> Credit {
    return account.credit
}

struct AwesomeCredit { var credit:Int }

struct AwesomeAccount { var credit:AwesomeCredit }

func awesomeCredit(account: AwesomeAccount) -> AwesomeCredit {
    return account.credit
}

