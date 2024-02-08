//
//  BudgetView.swift
//  Budget
//
//  Created by Raul Lamas on 1/11/24.
//

import SwiftUI

struct BudgetRootView: View {
    @State private var addingNewTransaction = false
    @State private var stateController = StateController(account: TestData.account)
    
    var body: some View { // PRESENTATION
        NavigationStack {
            AccountView(account: stateController.account)
                .navigationTitle("Budget")
                .toolbar {
                    ToolbarItem {
                        Button(action: addTransaction) {
                            Image(systemName: "plus")
                                .font(.title)
                        }
                    }
                }
                .sheet(isPresented: $addingNewTransaction) {
                    TransactionView(
                        addingNewTransaction: $addingNewTransaction,
                        stateController: stateController
                    )
                }
        }
    }
}

private extension BudgetRootView { // USER INTERACTION
    func addTransaction() {
        addingNewTransaction = true
    }
}

//#Preview {
//    BudgetView()
//}
