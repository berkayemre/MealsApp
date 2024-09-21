//
//  ContentView.swift
//  Meals
//
//  Created by Berkay Emre Aslan on 16.08.2024.
//

import SwiftUI

struct MealTabView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
            TabView{
                MealListView()
                    .tabItem { Label("Home", systemImage: "house") }
                
                AccountView()
                    .tabItem { Label("Account", systemImage: "person") }
                
                OrderView()
                    .tabItem { Label("Order", systemImage: "bag") }
                    .badge(order.items.count)
            }
            .accentColor(.brandPrimary)
        }
    }

#Preview {
    MealTabView()
}
