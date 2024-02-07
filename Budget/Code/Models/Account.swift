//
//  Account.swift
//  Budget
//
//  Created by Raul Lamas on 1/10/24.
//  Marked as Clean by Raul Lamas on 2/7/24.

import Foundation

struct Account { // CORE
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
