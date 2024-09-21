//
//  MLButton.swift
//  Meals
//
//  Created by Berkay Emre Aslan on 12.09.2024.
//

import SwiftUI

struct MLButton: View {
    
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color.brandPrimary)
            .cornerRadius(10)
    }
}

#Preview {
    MLButton(title: "Test title")
}
