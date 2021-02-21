//
//  CookBook.swift
//  Picky Eats
//
//  Created by Dylan Westfall on 2/20/21.
//

import Foundation

class CookBook: ObservableObject {
    @Published var recipes: [Recipe]
    @Published var ingredients: [Ingredient]

    init(){
        let testingValues = TestValues()
        recipes = testingValues.testRecipes()
        ingredients = testingValues.testIngredients()
    }

}
