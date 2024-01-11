//
//  BudgetView.swift
//  Budget
//
//  Created by Raul Lamas on 1/11/24.
//

import SwiftUI

struct BudgetView: View {
    @EnvironmentObject private var stateController: StateController
    
    var body: some View {
        NavigationStack {
            AccountView(account: stateController.account)
            // TODO: add addingNewTransaction
//                .navigationBarTitle("Budget")
//                .navigationBarItems(trailing: Button(action: { self.addingNewTransaction = true }) {
//                                    Image(systemName: "plus")
//                                        .font(.title)
//                                })
        }
    }
}

#Preview {
    BudgetView()
}
