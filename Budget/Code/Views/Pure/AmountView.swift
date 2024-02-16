//

import SwiftUI

struct AmountView: View {
    @Binding private(set) var amount: String
    
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
    AmountView(amount: .constant("0.00"))
}
