//
//  Transaction.Category+imageName.swift
//  Budget
//
//  Created by Raul Lamas on 1/11/24.
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
