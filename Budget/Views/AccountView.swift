//
//  AccountView.swift
//  Budget
//
//  Created by Raul Lamas on 1/10/24.
//

import SwiftUI

struct AccountView: View {
    let account: Account
    
    var body: some View {
        List {
            Balance(amount: account.balance)
            ForEach(transactions) { transaction in
                Row(transaction: transaction)
            }
        }
    }
}

private extension AccountView {
    var transactions: [Transaction] {
        return account
            .transactions
            .sorted(by: { $0.date > $1.date })
    }
}

#Preview {
    AccountView(account: TestData.account)
}
