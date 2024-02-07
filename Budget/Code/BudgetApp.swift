//
//  BudgetApp.swift
//  Budget
//
//  Created by Raul Lamas on 1/10/24.
//  Marked as Clean by Raul Lamas on 2/7/24.

import SwiftUI

@main
struct BudgetApp: App {
    @StateObject private var stateController = StateController(account: TestData.account)
    
    var body: some Scene {
        WindowGroup {
            BudgetView()
                .environmentObject(stateController)
        }
    }
}
