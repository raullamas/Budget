//
//  BudgetView.swift
//  Budget
//
//  Created by Raul Lamas on 1/11/24.
//

import SwiftUI

struct BudgetView: View {
    @State private var addingNewTransaction = false
    
    @EnvironmentObject private var stateController: StateController
    
    var body: some View { // PRESENTATION
        NavigationStack {
            AccountView(account: stateController.account)
                .navigationBarTitle("Budget")
                .navigationBarItems(
                    trailing: Button(action: addTransaction) {
                        Image(systemName: "plus")
                            .font(.title)
                    }
                )
                .sheet(isPresented: $addingNewTransaction) {
                    TransactionView(addingNewTransaction: $addingNewTransaction)
                }
        }
    }
}

private extension BudgetView { // USER INTERACTION
    func addTransaction() {
        addingNewTransaction = true
    }
}

//#Preview {
//    BudgetView()
//}
