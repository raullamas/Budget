//
//  StateController.swift
//  Budget
//
//  Created by Raul Lamas on 1/11/24.
//  Marked as Clean by Raul Lamas on 2/7/24.

import Foundation

@Observable final class StateController { // CORE
    private(set) var account: Account
    
    init(account: Account) {
        self.account = account
    }
    
    func add(_ transaction: Transaction) {
        account.add(transaction)
    }
}
