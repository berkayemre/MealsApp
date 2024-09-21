//
//  MealsApp.swift
//  Meals
//
//  Created by Berkay Emre Aslan on 16.08.2024.
//

import SwiftUI

@main
struct MealsApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            MealTabView().environmentObject(order)
        }
    }
}
