//

import SwiftUI

// trx: transaction
struct TransactionForm: View {
    @Binding private(set) var amount: String
    @Binding private(set) var description: String
    @Binding private(set) var selectedCat: Transaction.Category
    
    var body: some View {
        List {
            AmountView(amount: $amount)
            CatSelectionView(selectedCat: $selectedCat)
                .buttonStyle(.plain)
            TextField("Description", text: $description)
        }
    }
}

#Preview {
    TransactionForm(
        amount: .constant(String(-1_999)),
        description: .constant(""),
        selectedCat: .constant(.utilities)
    )
}
