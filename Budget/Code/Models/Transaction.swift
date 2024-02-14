//

import Foundation

struct Transaction: Identifiable {
    enum Category: String, CaseIterable, Identifiable {
        case income, groceries, utilities
        
        var id: String { rawValue }
    }
    
    let amount: Int,
        category: Category,
        date: Date,
        description: String,
        id = UUID()
}
