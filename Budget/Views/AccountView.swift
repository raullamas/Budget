//
//  AccountView.swift
//  Budget
//
//  Created by Raul Lamas on 1/10/24.
//

import SwiftUI

struct AccountView: View {
    let account: Account
    
    private var transactions: [Budget.Transaction] {
        return account
            .transactions
            .sorted(by: { $0.date > $1.date })
    }
    
    var body: some View {
        List {
            Balance(amount: account.balance)
            ForEach(transactions) { transaction in
                Row(transaction: transaction)
            }
        }
    }
}

#Preview {
    AccountView(account: TestData.account)
}
