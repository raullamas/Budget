//
//  StateController.swift
//  Budget
//
//  Created by Raul Lamas on 1/11/24.
//

import Foundation

final class StateController: ObservableObject {
    @Published private(set) var account: Account
    
    init(account: Account) {
        self.account = account
    }
    
    func add(_ transaction: Transaction) {
        account.add(transaction)
    }
}
