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
    
    @Binding var addingNewTransaction: Bool
    
    @EnvironmentObject private var stateController: StateController
    
    
    var body: some View {
        NavigationStack {
            TransactionContent(amount: $amount, selectedCategory: $selectedCategory, description: $description)
                .navigationBarTitle("New Transaction")
                .navigationBarItems(leading: Button(action: { self.dismiss() }) {
                    Text("Cancel")
                }, trailing: Button(action: addTransaction) {
                    Text("Add")
                        .bold()
                })
        }
    }
}

private extension TransactionView {
    func addTransaction() {
        let sign = selectedCategory == .income ? 1 : -1
        let transaction = Transaction(
            amount: Int(amount)! * 100 * sign,
            date: Date(),
            description: description,
            category: selectedCategory)
        
        stateController.add(transaction)
        dismiss()
    }
    
    func dismiss() {
        addingNewTransaction = false
    }
}

#Preview {
    TransactionView(addingNewTransaction: .constant(true))
}
