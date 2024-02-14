//

import SwiftUI

struct BudgetRootView: View {
    // trx: transaction
    @State private var addingNewTrx = false
    @State private var stateController = StateController(
        account: TestData.account
    )
    
    var body: some View {
        NavigationStack {
            AccountView(account: stateController.account)
                .navigationTitle("Budget")
                .toolbar { ToolbarItem { addButton } }
                .sheet(isPresented: $addingNewTrx) {
                    TransactionRootView(
                        addingNewTrx: $addingNewTrx,
                        stateController: stateController
                    )
                }
        }
    }
}

private extension BudgetRootView {
    var addButton: some View {
        Button(action: addTransaction) {
            Image(systemName: "plus")
                .font(.title)
        }
        .accessibilityLabel("Add transaction")
    }
    
    func addTransaction() { addingNewTrx = true }
}

//#Preview {
//    BudgetView()
//}
