//

import SwiftUI

struct NewTransactionView: View {
    @Binding private(set) var addingNewTrx: Bool
    
    @State private var amount = ""
    @State private var description = ""
    // cat: category
    @State private var selectedCat: Transaction.Category = .groceries
    
    let stateController: StateController
    
    var body: some View {
        NavigationStack {
            TrxContentView(
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

private extension NewTransactionView {
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
    NewTransactionView(
        addingNewTrx: .constant(true),
        stateController: StateController(account: TestData.account)
    )
}
