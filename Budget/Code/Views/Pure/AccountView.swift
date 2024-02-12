//
//  AccountView.swift
//  Budget
//
//  Created by Raul Lamas on 1/10/24.
//  Marked as Clean by Raul Lamas on 2/12/24.

import SwiftUI

struct AccountView: View {
    let account: Account
    
    var body: some View {
        List {
            BalanceView(amount: account.balance)
            // trxs: transactions
            ForEach(sortedTrxs) { transaction in
                RowView(transaction: transaction)
            }
        }
    }
}

private extension AccountView {
    var sortedTrxs: [Transaction] {
        return account.transactions.sorted(
            by: { $0.date > $1.date }
        )
    }
}

#Preview {
    AccountView(account: TestData.account)
}
