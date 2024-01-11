//
//  CategoryViews.swift
//  Budget
//
//  Created by Raul Lamas on 1/10/24.
//

import SwiftUI

struct CategoryViews: View {
    var body: some View {
        HStack {
            ForEach(Transaction.Category.allCases, id: \.rawValue) { category in
                VStack {
                    CategoryView(category: category)
                    CategoryView(category: category, highlighted: false)
                }
            }
        }
    }
}

#Preview {
    CategoryViews()
}
