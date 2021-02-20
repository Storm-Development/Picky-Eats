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
        recipes = []
        ingredients = [Ingredient(name: "Chedder", generalName: "Cheese", quantity: 1.0, measurment: "c"),Ingredient(name: "Nacho Chips", generalName: "Chips", quantity: 0.25, measurment: "lbs"), Ingredient(name: "Whole Milk", generalName: "Milk", quantity: 1.0, measurment: "c"), Ingredient(name: "Avacado", generalName: "Avacado", quantity: 1.0, measurment: "ct") ]
    }

}
