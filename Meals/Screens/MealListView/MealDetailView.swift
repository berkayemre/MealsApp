//
//  MealDetailView.swift
//  Meals
//
//  Created by Berkay Emre Aslan on 10.09.2024.
//

import SwiftUI

struct MealDetailView: View {
    
    @EnvironmentObject var order: Order
    
    let meal: Meal
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack{
            MealRemoteImage(urlString: meal.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            
            VStack{
                Text(meal.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(meal.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing: 40){
                    
                    NutritionInfo(title: "Calories", value: meal.calories)
                    NutritionInfo(title: "Carbs", value: meal.carbs)
                    NutritionInfo(title: "Protein", value: meal.protein)
                    
                }
            }
            Spacer()
            
            
            Button {
                order.add(meal)
                isShowingDetail = false
            } label: {
               // MLButton(title: "$\(meal.price, specifier: "%.2f") - Add to Order")
                Text("$\(meal.price, specifier: "%.2f") - Add to Order")
            }
            .modifier(StandartButtonStyle())
    //        .standartButtonStyle()
    //        .buttonStyle(.bordered)
    //        .tint(.brandPrimary)
    //        .controlSize(.large)
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button{
            isShowingDetail = false
        }label: {
         XDismissButton()
        },alignment: .topTrailing)
    }
}

#Preview {
    MealDetailView(meal: MockData.sampleMeal, isShowingDetail: .constant(true))
}


struct NutritionInfo: View {
    
    let title: String
    let value: Int
    
    var body: some View {
        
        VStack(spacing: 5){
            Text(title)
                .bold()
                .font(.caption)
                
            Text("\(value)")
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
    
    
}
