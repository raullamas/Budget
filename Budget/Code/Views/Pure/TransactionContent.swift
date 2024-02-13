//
//  TransactionContent.swift
//  Budget
//
//  Created by Raul Lamas on 1/11/24.
//

import SwiftUI

struct TransactionContent: View {
    @Binding var amount: String
    // cat: category
    @Binding var selectedCat: Transaction.Category
    @Binding var description: String
    
    var body: some View {
        List {
            Amount(amount: $amount)
            CategorySelectionView(selectedCat: $selectedCat)
                .buttonStyle(PlainButtonStyle())
            TextField("Description", text: $description)
        }
    }
}

#Preview {
    TransactionContent(
        amount: .constant(String(-1_999)),
        selectedCat: .constant(.utilities),
        description: .constant("")
    )
}
