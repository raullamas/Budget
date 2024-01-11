//
//  Date+TransactionFormat.swift
//  Budget
//
//  Created by Raul Lamas on 1/10/24.
//

import Foundation

extension Date {
    var transactionFormat: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        
        return formatter.string(from: self)
    }
}
