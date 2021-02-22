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

class TrackedRecipe: Codable, Equatable, Hashable {
    static func == (lhs: TrackedRecipe, rhs: TrackedRecipe) -> Bool {
        lhs.recipe.name == rhs.recipe.name
    }

    var recipe: Recipe

    init(recipe: Recipe){
        self.recipe = recipe
    }

    func hash(into hasher: inout Hasher) { return hasher.combine(ObjectIdentifier(self))}
}
