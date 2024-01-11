//
//  TestData.swift
//  Budget
//
//  Created by Raul Lamas on 1/10/24.
//

import Foundation

struct TestData {
    static let transactions: [Transaction] = [
        Transaction(
            amount: 200_000,
            date: Date(),
            description: "Salary",
            category: .income
        ),
        Transaction(
            amount: -1_999,
            date: Date(),
            description: "Phone bill",
            category: .utilities
        ),
        Transaction(
            amount: -5_687,
            date: Date(),
            description: "Food",
            category: .groceries
        )
    ]
    
    static let account = Account(transactions: transactions)
}
