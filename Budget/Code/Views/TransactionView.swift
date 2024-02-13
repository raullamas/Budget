//
//  TransactionView.swift
//  Budget
//
//  Created by Raul Lamas on 1/11/24.
//

import SwiftUI

struct TransactionView: View {
    // trx: transaction
    @Binding private(set) var addingNewTrx: Bool
    
    @State private var amount: String = ""
    // cat: category
    @State private var selectedCat: Transaction.Category = .groceries
    @State private var description: String = ""
    
    let stateController: StateController
    
    
    var body: some View {
        NavigationStack {
            TransactionContent(
                amount: $amount,
                selectedCat: $selectedCat,
                description: $description
            )
            .navigationTitle("New Transaction")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    cancelButton
                }
                ToolbarItem {
                    addButton
                }
            }
        }
    }
}

private extension TransactionView {
    var cancelButton: some View {
        Button(action: { self.dismiss() }) {
            Text("Cancel")
        }
    }
    
    var addButton: some View {
        Button(action: addTransaction) {
            Text("Add")
                .bold()
        }
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
