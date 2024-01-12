//
//  StateController.swift
//  Budget
//
//  Created by Raul Lamas on 1/11/24.
//

import Foundation

final class StateController: ObservableObject {
    @Published private(set) var account: Account = TestData.account
    
    func add(_ transaction: Transaction) {
        account.add(transaction)
    }
}
