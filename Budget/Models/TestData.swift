//
//  TestData.swift
//  Budget
//
//  Created by Raul Lamas on 1/10/24.
//

import Foundation

struct TestData { // CORE
    static let account = Account(transactions: transactions)
    
    static let food = Transaction(
        amount: Int.random(in: 100...20_000) * -1,
        category: .groceries,
        date: Date(),
        description: "Food"
    )
    
    static let phoneBill = Transaction(
        amount: Int.random(in: 100...20_000) * -1,
        category: .utilities,
        date: Date(),
        description: "Phone bill"
    )
    
    static let salary = Transaction(
        amount: Int.random(in: 100_000...1_000_000),
        category: .income,
        date: Date(),
        description: "Salary"
    )
    
    static let transactions: [Transaction] = [salary, phoneBill, food]
}
