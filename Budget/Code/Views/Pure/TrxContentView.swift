//

import SwiftUI

// trx: transaction
struct TrxContentView: View {
    @Binding private(set) var amount: String
    @Binding private(set) var description: String
    @Binding private(set) var selectedCat: Transaction.Category
    
    var body: some View {
        List {
            AmountView(amount: $amount)
            // cat: category
            CatSelectionView(selectedCat: $selectedCat)
                .buttonStyle(.plain)
            TextField("Description", text: $description)
        }
    }
}

#Preview {
    TrxContentView(
        amount: .constant(String(-1_999)),
        description: .constant(""),
        selectedCat: .constant(.utilities)
    )
}
