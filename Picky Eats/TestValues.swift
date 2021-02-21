//
//  TestValues.swift
//  Picky Eats
//
//  Created by Dylan Westfall on 2/20/21.
//

import Foundation

class TestValues {
    func testRecipes() -> [Recipe] {
        var recipes: [Recipe] = []
        //1
        recipes.append(Recipe(name: "Maple Salmon",
                              estimate: "25 minutes",
                              steps: ["Mix spices in a bowl, stirl in syrup and oil till combined", "prehead a pan ot medium-high heat at 350 degrees", "Coat salmon in mixture","Cook roughly 5 to 7 minutes per side"], ingredientList: [
                                Ingredient(name: "salt", generalName: "basic spice", quantity: 1.5, measurment: "t"),
                                Ingredient(name: "paprika", generalName: "basic spice", quantity: 1.0, measurment: "t"),
                                Ingredient(name: "cardamom", generalName: "flavorful spice", quantity: 1.0, measurment: "t"),
                                Ingredient(name: "coriander", generalName: "flavorful spice", quantity: 1.0, measurment: "t"),
                                Ingredient(name: "ground black pepper", generalName: "basic spice", quantity: 0.5, measurment: "t"),
                                Ingredient(name: "grapeseed oil", generalName: "oil", quantity: 0.25, measurment: "c"),
                                Ingredient(name: "maple syrup", generalName: "sugar", quantity: 2.0, measurment: "T"),
                                Ingredient(name: "salmon fillet", generalName: "fish", quantity: 2.0, measurment: "Lb")
                              ]
        ))

        //2
        recipes.append(Recipe(name: "Grilled Shrimp",
                              estimate: "50 minutes",
                              steps: ["Mix spices in a bowl, stirl in syrup and oil till combined", "prehead a pan ot medium-high heat at 350 degrees", "Coat salmon in mixture","Cook roughly 5 to 7 minutes per side"], ingredientList: [
                                Ingredient(name: "shrimp", generalName: "shellfish", quantity: 1.0, measurment: "Lb"),
                                Ingredient(name: "olive oil", generalName: "oil", quantity: 3.0, measurment: "T"),
                                Ingredient(name: "cilantro", generalName: "herb", quantity: 3.0, measurment: "T"),
                                Ingredient(name: "lime juice", generalName: "citrus", quantity: 2.0, measurment: "T"),
                                Ingredient(name: "garlic", generalName: "flavorful spice", quantity: 2.0, measurment: "N/A"),
                                Ingredient(name: "tequila", generalName: "alcohol", quantity: 2.0, measurment: "t"),
                                Ingredient(name: "cayenne pepper", generalName: "hot spice", quantity: 0.25, measurment: "t"),
                                Ingredient(name: "salt", generalName: "basic spice", quantity: 0.25, measurment: "t")
                              ]
        ))

        //3
        recipes.append(Recipe(name: "Broiled Lobster",
                              estimate: "20 minutes",
                              steps: ["Set Broiler", "Butterfly lobster tails on baking sheet, seasoning with butter and spices", "Broil for about 1 minute per ounce","Garnish with lemon and enjoy"], ingredientList: [
                                Ingredient(name: "Lobster Tail", generalName: "shellfish", quantity: 2.0, measurment: "N/A"),
                                Ingredient(name: "melted butter", generalName: "oil", quantity: 3.0, measurment: "T"),
                                Ingredient(name: "paprika", generalName: "basic spice", quantity: 0.0, measurment: "5"),
                                Ingredient(name: "salt", generalName: "basic spice", quantity: 0.0, measurment: "N/A"),
                                Ingredient(name: "ground white pepper", generalName: "basic spice", quantity: 1.0, measurment: "N/A"),
                                Ingredient(name: "lemon", generalName: "citrus", quantity: 1.0, measurment: "N/A")
                              ]
        ))

        //4
        recipes.append(Recipe(name: "Veggie Burgers",
                              estimate: "1 hour and 20 minutes",
                              steps: ["Oil a skillet and heat on low","cook onion and garlic in pan, 5 minutes","Mix carrots, squash, and succhinin in pan", "Cook for 2 minutes stiring","Remove pan from heat, mix in rest of ingredients besides flour and transfer to bowl and rest in fridge for 1 hour", "Set Gril to high heat and place patties on gril after forming and rolling lightly in flour", "oil grate and grill 5 minutes for each side."], ingredientList: [
                                Ingredient(name: "olive oil", generalName: "oil", quantity: 2.0, measurment: "t"),
                                Ingredient(name: "onions grated", generalName: "vegetable", quantity: 1.0, measurment: "N/A"),
                                Ingredient(name: "crushed garlic", generalName: "flavorful spice", quantity: 0.0, measurment: "5"),
                                Ingredient(name: "carrots shredded", generalName: "vegetable", quantity: 2.0, measurment: "N/A"),
                                Ingredient(name: "squash shredded", generalName: "vegetable", quantity: 1.0, measurment: "N/A"),
                                Ingredient(name: "zucchini shredded", generalName: "vegetable", quantity: 1.0, measurment: "N/A"),
                                Ingredient(name: "rolled oats", generalName: "grain", quantity: 1.5, measurment: "c"),
                                Ingredient(name: "Cheddar cheese shredded", generalName: "cheese", quantity: 0.25, measurment: "c"),
                                Ingredient(name: "egg beaten", generalName: "egg", quantity: 1.0, measurment: "N/A"),
                                Ingredient(name: "soy sauce", generalName: "flavorful spice", quantity: 1.0, measurment: "T"),
                                Ingredient(name: "flour", generalName: "basic baking", quantity: 1.5, measurment: "c")
                              ]
        ))


        return recipes
    }

    func testIngredients() -> [Ingredient] {
        var ingredients: [Ingredient] = []

        //1
        ingredients.append(
            Ingredient(name: "Salt, Pepper, or Peprika",
                       generalName: "basic spice",
                       quantity: 0.0,
                       measurment: "N/A"
            ))

        //2
        ingredients.append(
            Ingredient(name: "Fish",
                       generalName: "fish",
                       quantity: 0.0,
                       measurment: "N/A"
            ))

        //3
        ingredients.append(
            Ingredient(name: "Diverse Spices",
                       generalName: "flavorful spice",
                       quantity: 0.0,
                       measurment: "N/A"
            ))

        //4
        ingredients.append(
            Ingredient(name: "Sugars and Syrups",
                       generalName: "sugar",
                       quantity: 0.0,
                       measurment: "N/A"
            ))

        //5
        ingredients.append(
            Ingredient(name: "Cooking Oils",
                       generalName: "oil",
                       quantity: 0.0,
                       measurment: "N/A"
            ))

        //6
        ingredients.append(Ingredient(name: "Crabs, Lobster, Mollusk, or Shrimp", generalName: "shellfish", quantity: 0.0, measurment: "N/A"))

        //7
        ingredients.append(Ingredient(name: "Cilantro, Oregeno", generalName: "herb", quantity: 0.0, measurment: "N/A"))

        //8
        ingredients.append(Ingredient(name: "Oranges, Lemons, or Limes", generalName: "citrus", quantity: 0.0, measurment: "N/A"))

        //9
        ingredients.append(Ingredient(name: "vodka, wine, or tequila", generalName: "alcohol", quantity: 0.0, measurment: "N/A"))

        //10
        ingredients.append(Ingredient(name: "Cayaenne pepper, Jalepaneo Seeds, or Wasabi", generalName: "hot spice", quantity: 0.0, measurment: "N/A"))


        Ingredient(name: "zucchini shredded", generalName: "vegetable", quantity: 1.0, measurment: "N/A")
        Ingredient(name: "rolled oats", generalName: "grain", quantity: 1.5, measurment: "c")
        Ingredient(name: "Cheddar cheese shredded", generalName: "cheese", quantity: 0.25, measurment: "c")
        Ingredient(name: "egg beaten", generalName: "egg", quantity: 1.0, measurment: "N/A")
        Ingredient(name: "soy sauce", generalName: "flavorful spice", quantity: 1.0, measurment: "T")
        Ingredient(name: "flour", generalName: "basic baking", quantity: 1.5, measurment: "c")
        return ingredients
    }
}
