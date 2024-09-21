//
//  User.swift
//  Meals
//
//  Created by Berkay Emre Aslan on 13.09.2024.
//

import Foundation

struct User: Codable {
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthdate       = Date()
    var extraNapkins    = false
    var frequentRefills = false
}
