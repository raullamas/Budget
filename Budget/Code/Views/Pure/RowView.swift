//
//  Row.swift
//  Budget
//
//  Created by Raul Lamas on 1/10/24.
//

import SwiftUI

struct RowView: View {
    let transaction: Transaction
    
    var body: some View {
        HStack(spacing: 16.0) {
            CategoryView(category: transaction.category)
            
            VStack(alignment: .leading, spacing: 4.0) {
                Text(transaction.category.rawValue)
                    .font(.headline)
                
                Text(transaction.description)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 4.0) {
                Text(transaction.amount.currencyFormat)
                    .font(.headline)
                    .foregroundStyle(color(for: transaction.amount))
                
                Text(transaction.date.transactionFormat)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
        }
        .padding(.vertical)
    }
    
    func color(for amount: Int) -> Color {
        amount > 0 ? .blue: .primary
    }
}

#Preview {
    RowView(transaction: Transaction(
        amount: 200_000,
        category: .income,
        date: Date(),
        description: "Salary"
    ))
}
