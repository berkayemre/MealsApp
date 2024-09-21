//
//  Meal.swift
//  Meals
//
//  Created by Berkay Emre Aslan on 22.08.2024.
//

import Foundation

struct Meal: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct MealResponse: Decodable {
    let request: [Meal]
}

struct MockData {
    
    static let sampleMeal = Meal(id: 0001,
                                           name: "Test Meal",
                                           description: "This is the description for my meal. It's yummy.",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let meals       = [sampleMeal, sampleMeal, sampleMeal, sampleMeal]
    
    static let orderItemOne     = Meal(id: 0001,
                                           name: "Test Meal One",
                                           description: "This is the description for my meal. It's yummy.",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let orderItemTwo     = Meal(id: 0002,
                                           name: "Test Meal Two",
                                           description: "This is the description for my meal. It's yummy.",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let orderItemThree   = Meal(id: 0003,
                                           name: "Test Meal Three",
                                           description: "This is the description for my meal. It's yummy.",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let orderItems       = [orderItemOne, orderItemTwo, orderItemThree]
}
