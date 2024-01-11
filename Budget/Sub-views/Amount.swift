//
//  Amount.swift
//  Budget
//
//  Created by Raul Lamas on 1/10/24.
//

import SwiftUI

struct Amount: View {
    @Binding var amount: String
    
    var body: some View {
        VStack(alignment: .trailing) {
            Text("Amount")
                .font(.callout)
                .bold()
                .foregroundStyle(.secondary)
            
            TextField(0.currencyFormat, text: $amount)
                .multilineTextAlignment(.trailing)
                .keyboardType(.decimalPad)
                .font(Font.largeTitle.bold())
        }
        .padding()
    }
}

#Preview {
    Amount(amount: .constant("0.00"))
}
