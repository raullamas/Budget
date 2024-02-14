//

import SwiftUI

struct CategoryView: View {
    let category: Transaction.Category
    var highlighted: Bool = true
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 56.0, height: 56.0)
                .foregroundColor(highlighted ? Color(.systemTeal) : Color(.quaternarySystemFill))
            
            Image(systemName: "\(category.imageName)")
                .font(.headline)
                .foregroundColor(highlighted ? .white : .primary)
        }
    }
}

#Preview {
    CategoryView(category: .groceries)
}
