//
//  Transaction.swift
//  Budget
//
//  Created by Raul Lamas on 1/10/24.
//  Marked as Clean by Raul Lamas on 2/7/24.

import Foundation

struct Transaction: Identifiable {
    enum Category: String, CaseIterable, Identifiable {
        case income, groceries, utilities
        
        var id: String { rawValue }
    }
    
    let amount: Int,
        category: Category,
        date: Date,
        description: String,
        id = UUID()
}
