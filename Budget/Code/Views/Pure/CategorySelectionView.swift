//
//  CategorySelectionView.swift
//  Budget
//
//  Created by Raul Lamas on 1/11/24.
//

import SwiftUI

struct CategorySelectionView: View {
    @Binding var selectedCat: Transaction.Category
    
    var body: some View {
        HStack {
            Spacer()
            ForEach(Transaction.Category.allCases) { category in
                CategoryButton(
                    category: category,
                    action: { self.selectedCat = category },
                    selected: category == self.selectedCat
                )
                Spacer()
            }
        }
        .padding()
    }
}

#Preview {
    CategorySelectionView(selectedCat: .constant(.utilities))
}
