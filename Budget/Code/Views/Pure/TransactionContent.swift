//

import SwiftUI

struct TransactionContent: View {
    @Binding var amount: String
    @Binding var description: String
    // cat: category
    @Binding var selectedCat: Transaction.Category
    
    var body: some View {
        List {
            Amount(amount: $amount)
            CategorySelectionView(selectedCat: $selectedCat)
                .buttonStyle(.plain)
            TextField("Description", text: $description)
        }
    }
}

#Preview {
    TransactionContent(
        amount: .constant(String(-1_999)),
        description: .constant(""),
        selectedCat: .constant(.utilities)
    )
}
