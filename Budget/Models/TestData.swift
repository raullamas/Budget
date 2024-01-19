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
            category: .income,
            date: Date(),
            description: "Salary"
        ),
        Transaction(
            amount: -1_999,
            category: .utilities,
            date: Date(),
            description: "Phone bill"
        ),
        Transaction(
            amount: -5_687,
            category: .groceries,
            date: Date(),
            description: "Food"
        )
    ]
    
    static let account = Account(transactions: transactions)
}
