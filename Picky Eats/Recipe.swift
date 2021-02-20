//
//  Recipe.swift
//  Picky Eats
//
//  Created by Dylan Westfall on 2/20/21.
//

import Foundation

struct Recipe: Codable, Hashable {
    var name: String
    var estimate: String
    var steps: [String]
    var ingredientList: [Ingredient]


}
