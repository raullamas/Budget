//
//  Transaction.swift
//  Budget
//
//  Created by Raul Lamas on 1/10/24.
//

import Foundation

struct Transaction: Identifiable {
    enum Category: String, CaseIterable, Identifiable {
        case income, groceries, utilities
        
        var id: String { rawValue }
    }
    
    let id = UUID()
    
    let amount: Int,
        date: Date,
        description: String,
        category: Category
}
