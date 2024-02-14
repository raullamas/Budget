//

import SwiftUI

struct CategoryButton: View {
    let category: Transaction.Category,
        action: () -> Void
    var selected: Bool = false
    
    var body: some View {
        Button(action: action) {
            VStack {
                CategoryView(category: category, highlighted: selected)
                
                Text(category.rawValue)
                    .font(.headline)
                    .foregroundColor(selected ? .primary : .secondary)
            }
        }
    }
}

#Preview {
    CategoryButton(
        category: .utilities,
        action: { Void() },
        selected: true
        
    )
}
