//

import SwiftUI

struct NewTransactionView: View {
    @Binding private(set) var isAddingTransaction: Bool
    
    @State private var amount = ""
    @State private var description = ""
    @State private var selectedCategory: Transaction.Category = .groceries
    
    let stateController: StateController
    
    var body: some View {
        NavigationStack {
            TrxContentView(
                amount: $amount,
                description: $description,
                selectedCat: $selectedCategory
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
    
    func dismiss() { isAddingTransaction = false }
}

#Preview {
    NewTransactionView(
        isAddingTransaction: .constant(true),
        stateController: StateController(account: TestData.account)
    )
}
