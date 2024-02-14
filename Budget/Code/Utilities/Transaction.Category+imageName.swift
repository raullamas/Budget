//

import Foundation

extension Transaction.Category {
    var imageName: String {
        switch self {
        case .groceries: return "cart.fill"
        case .income: return "hand.thumbsup.fill"
        case .utilities: return "phone.fill"
        }
    }
}
