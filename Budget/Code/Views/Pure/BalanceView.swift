//
//  Balance.swift
//  Budget
//
//  Created by Raul Lamas on 1/10/24.
//

import SwiftUI

struct BalanceView: View {
    var amount: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Balance")
                .font(.callout)
                .bold()
                .foregroundStyle(.secondary)
            Text(amount.currencyFormat)
                .font(.largeTitle)
                .bold()
        }
        .padding(.vertical)
    }
}

#Preview {
    BalanceView(amount: 434_500)
}
