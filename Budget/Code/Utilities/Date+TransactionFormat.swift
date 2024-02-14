//

import Foundation

extension Date {
    var transactionFormat: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        
        return formatter.string(from: self)
    }
}
