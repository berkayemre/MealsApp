//
//  OrderView.swift
//  Meals
//
//  Created by Berkay Emre Aslan on 19.08.2024.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView{
            ZStack {
                VStack{
                    List {
                        ForEach(order.items) { meal in
                            MealListCell(meal: meal)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("order placed")
                    }label: {
                       // MLButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                        Text("$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .modifier(StandartButtonStyle())
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order.\nPlease add a meal!")
                }
                
            }
            .navigationTitle("📝 Orders")
        }
    }
}

#Preview {
    OrderView()
}
