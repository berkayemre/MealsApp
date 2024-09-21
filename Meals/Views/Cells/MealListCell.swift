//
//  MealListCell.swift
//  Meals
//
//  Created by Berkay Emre Aslan on 22.08.2024.
//

import SwiftUI

struct MealListCell: View {
    
    let meal: Meal
    var body: some View {
        HStack{
            MealRemoteImage(urlString: meal.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5){
                Text(meal.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(meal.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    MealListCell(meal: MockData.sampleMeal)
}
