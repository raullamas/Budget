//

import SwiftUI

struct HomeScreen: View {
    @State private var isAddingTransaction = false
    @State private var accountController = AccountController(
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

private extension HomeScreen {
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
