//

import SwiftUI

// cat: category
struct CatSelectionView: View {
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
    CatSelectionView(selectedCat: .constant(.utilities))
}
