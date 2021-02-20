//
//  UserInfo.swift
//  Picky Eats
//
//  Created by Dylan Westfall on 2/20/21.
//

import Foundation

struct UserInfo: Codable {
    var name: String
    var likes: [Ingredient]
    var dislikes: [Ingredient]
    var lastSevenRecipes: [Recipe]
}
