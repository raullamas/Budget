//
//  Transaction.Category+name.swift
//  Budget
//
//  Created by Raul Lamas on 1/11/24.
//

import Foundation

extension Transaction.Category {
    var name: String {
        rawValue.capitalized
    }
}
