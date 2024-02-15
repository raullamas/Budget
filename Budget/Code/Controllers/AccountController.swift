//

import Foundation

@Observable final class AccountController {
    private(set) var account: Account
    
    init(account: Account) {
        self.account = account
    }
    
    func add(_ transaction: Transaction) {
        account.add(transaction)
    }
}
