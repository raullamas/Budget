//
//  CategorySelectionView.swift
//  Budget
//
//  Created by Raul Lamas on 1/11/24.
//

import SwiftUI

struct CategorySelectionView: View {
    @Binding var selectedCategory: Transaction.Category
    
    var body: some View {
        HStack {
            Spacer()
            ForEach(Transaction.Category.allCases) { category in
                CategoryButton(
                    category: category,
                    action: { self.selectedCategory = category },
                    selected: category == self.selectedCategory
                )
                Spacer()
            }
        }
        .padding()
    }
}

#Preview {
    CategorySelectionView(selectedCategory: .constant(.utilities))
}
