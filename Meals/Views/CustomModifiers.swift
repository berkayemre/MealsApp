//
//  CustomModifiers.swift
//  Meals
//
//  Created by Berkay Emre Aslan on 19.09.2024.
//

import SwiftUI

struct StandartButtonStyle: ViewModifier {
   
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}

extension View {
    func standartButtonStyle() -> some View {
        self.modifier(StandartButtonStyle())
    }
}
