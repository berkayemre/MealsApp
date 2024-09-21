//
//  MealListViewModel.swift
//  Meals
//
//  Created by Berkay Emre Aslan on 2.09.2024.
//

import SwiftUI

final class MealListViewModel: ObservableObject {
    
    @Published var meals: [Meal] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published var selectedMeal: Meal?
    
    func getMeals() {
        isLoading = true
        NetworkManager.shared.getMeals { result in
            DispatchQueue.main.async {
                self.isLoading = false
                switch result {
                    case .success(let meals):
                        self.meals = meals
                    case .failure(let error):
                        switch error{
                            case.invalidResponse:
                                self.alertItem = AlertContext.invalidResponse
                            case .invalidURL:
                                self.alertItem = AlertContext.invalidURL
                            case .invalidData:
                                self.alertItem = AlertContext.invalidData
                            case .unableToComplete:
                                self.alertItem = AlertContext.unableToComplete
                        }        
                }
            }
        }
    }
}
