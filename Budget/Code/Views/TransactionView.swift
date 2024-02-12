//
//  TransactionView.swift
//  Budget
//
//  Created by Raul Lamas on 1/11/24.
//

import SwiftUI

struct TransactionView: View {
    @State private var amount: String = ""
    @State private var selectedCategory: Transaction.Category = .groceries
    @State private var description: String = ""
    
    // trx: transaction
    @Binding var addingNewTrx: Bool
    
    var stateController: StateController
    
    
    var body: some View {
        NavigationStack {
            TransactionContent(
                amount: $amount,
                selectedCategory: $selectedCategory,
                description: $description
            )
            .navigationTitle("New Transaction")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: { self.dismiss() }) {
                        Text("Cancel")
                    }
                }
                ToolbarItem {
                    Button(action: addTransaction) {
                        Text("Add")
                            .bold()
                    }
                }
            }
        }
    }
}

private extension TransactionView {
    func addTransaction() {
        let sign = selectedCategory == .income ? 1 : -1
        let transaction = Transaction(
            amount: Int(amount)! * 100 * sign,
            category: selectedCategory,
            date: Date(),
            description: description
        )
        
        stateController.add(transaction)
        dismiss()
    }
    
    func dismiss() {
        addingNewTrx = false
    }
}

#Preview {
    TransactionView(
        addingNewTrx: .constant(true),
        stateController: StateController(account: TestData.account)
    )
}
