//
//  MealListView.swift
//  Meals
//
//  Created by Berkay Emre Aslan on 19.08.2024.
//

import SwiftUI

struct MealListView: View {
    
    @StateObject var viewModel = MealListViewModel()
    
    var body: some View {
        ZStack{
            NavigationView{
                List(viewModel.meals) {meal in
                    MealListCell(meal: meal)
                        .listRowSeparator(.hidden)
                        .onTapGesture {
                            viewModel.selectedMeal = meal
                            viewModel.isShowingDetail = true
                        }
                }
                .navigationTitle("🍟 Meals")
                .listStyle(.plain)
                .disabled(viewModel.isShowingDetail)
            }
            .onAppear {
                viewModel.getMeals()
            }
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            
            if viewModel.isShowingDetail {
                MealDetailView(meal: viewModel.selectedMeal!,
                               isShowingDetail: $viewModel.isShowingDetail)
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    MealListView()
}
