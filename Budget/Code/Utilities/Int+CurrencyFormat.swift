//

import Foundation

extension Int {
    var currencyFormat: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        
        return formatter.string(from: NSNumber(value: Float(self) / 100)) ?? ""
    }
}
