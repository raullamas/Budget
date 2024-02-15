//

import SwiftUI

struct TransactionForm: View {
    @Binding private(set) var amount: String
    @Binding private(set) var description: String
    @Binding private(set) var selectedCategory: Transaction.Category
    
    var body: some View {
        List {
            AmountView(amount: $amount)
            CatSelectionView(selectedCat: $selectedCategory)
                .buttonStyle(.plain)
            TextField("Description", text: $description)
        }
    }
}

#Preview {
    TransactionForm(
        amount: .constant(String(-1_999)),
        description: .constant(""),
        selectedCategory: .constant(.utilities)
    )
}
