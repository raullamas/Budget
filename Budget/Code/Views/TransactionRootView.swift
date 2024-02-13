//
//  TransactionView.swift
//  Budget
//
//  Created by Raul Lamas on 1/11/24.
//  Marked as Clean by Raul Lamas on 2/13/24.

import SwiftUI

struct TransactionRootView: View {
    // trx: transaction
    @Binding private(set) var addingNewTrx: Bool
    
    @State private var amount = ""
    @State private var description = ""
    // cat: category
    @State private var selectedCat: Transaction.Category = .groceries
    
    let stateController: StateController
    
    var body: some View {
        NavigationStack {
            TransactionContent(
                amount: $amount,
                description: $description,
                selectedCat: $selectedCat
            )
            .navigationTitle("New Transaction")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) { cancelButton }
                ToolbarItem { addButton }
            }
        }
    }
}

private extension TransactionRootView {
    var addButton: some View {
        Button("Add", action: addTransaction).bold()
    }
    
    var cancelButton: some View {
        Button("Cancel", action: dismiss)
    }
    
    func addTransaction() {
        let sign = selectedCat == .income ? 1 : -1
        let transaction = Transaction(
            amount: Int(amount)! * 100 * sign,
            category: selectedCat,
            date: Date(),
            description: description
        )
        
        stateController.add(transaction)
        dismiss()
    }
    
    func dismiss() { addingNewTrx = false }
}

#Preview {
    TransactionRootView(
        addingNewTrx: .constant(true),
        stateController: StateController(account: TestData.account)
    )
}
