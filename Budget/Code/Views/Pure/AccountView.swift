//

import SwiftUI

struct AccountView: View {
    let account: Account
    
    var body: some View {
        List {
            BalanceView(amount: account.balance)
            ForEach(sortedTransactions) { transaction in
                RowView(transaction: transaction)
            }
        }
    }
}

private extension AccountView {
    var sortedTransactions: [Transaction] {
        return account.transactions.sorted(
            by: { $0.date > $1.date }
        )
    }
}

#Preview {
    AccountView(account: TestData.account)
}
