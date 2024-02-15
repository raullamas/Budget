//

import SwiftUI

struct BudgetView: View {
    @State private var isAddingTransaction = false
    @State private var accountController = StateController(
        account: TestData.account
    )
    
    var body: some View {
        NavigationStack {
            AccountView(account: accountController.account)
                .navigationTitle("Budget")
                .toolbar { ToolbarItem { addButton } }
                .sheet(isPresented: $isAddingTransaction) {
                    NewTransactionView(
                        isAddingTransaction: $isAddingTransaction,
                        stateController: accountController
                    )
                }
        }
    }
}

private extension BudgetView {
    var addButton: some View {
        Button(action: addTransaction) {
            Image(systemName: "plus")
                .font(.title)
        }
        .accessibilityLabel("Add transaction")
    }
    
    func addTransaction() { isAddingTransaction = true }
}

//#Preview {
//    BudgetView()
//}
