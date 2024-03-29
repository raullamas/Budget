//

import Foundation

struct Account {
    private(set) var transactions: [Transaction]
    
    var balance: Int {
        var balance = 0
        for transaction in transactions {
            balance += transaction.amount
        }
        return balance
    }
    
    mutating func add(_ transaction: Transaction) {
        transactions.append(transaction)
    }
}
