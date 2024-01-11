//
//  BudgetApp.swift
//  Budget
//
//  Created by Raul Lamas on 1/10/24.
//

import SwiftUI

@main
struct BudgetApp: App {
    @StateObject private var stateController = StateController()
    
    var body: some Scene {
        WindowGroup {
            BudgetView()
                .environmentObject(stateController)
        }
    }
}
