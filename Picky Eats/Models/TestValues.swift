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
                                Ingredient(name: "flour", generalName: "grain", quantity: 1.5, measurment: "c")
                              ]
        ))

        //5
        recipes.append(Recipe(name: "Stuffed Burgers",
                              estimate: "30 minutes",
                              steps: ["Heat grill to high and lightly oil","mix the Worcetershire, ground beef, and seasonsing together making 10 patties. ","Place the filling betwen two patties and seal the edges", "Gril for 8 minutes per a side and then plate and enjoy"], ingredientList: [
                                Ingredient(name: "Ground Beef", generalName: "beef", quantity: 2.5, measurment: "Lb"),
                                Ingredient(name: "Worcetershire sauce", generalName: "flavorful spice", quantity: 3.0, measurment: "T"),
                                Ingredient(name: "Hickory Seasoning", generalName: "flavorful spice", quantity: 1.0, measurment: "t"),
                                Ingredient(name: "Salt and Pepper", generalName: "basic spice", quantity: 0.0, measurment: "N/A"),
                                Ingredient(name: "Onions Chopped", generalName: "vegetable", quantity: 1.0, measurment: "c"),
                                Ingredient(name: "Mushrooms Chopped", generalName: "mushroom", quantity: 1.0, measurment: "c"),
                                Ingredient(name: "Ham Chopped Pre-Cooked", generalName: "pork", quantity: 1.0, measurment: "c"),
                                Ingredient(name: "Cheddar cheese", generalName: "cheese", quantity: 1.5, measurment: "c")
                              ]
        ))

        //7
        recipes.append(Recipe(name: "Buffalo Chicken Pizza",
                              estimate: "15 minutes",
                              steps: ["Preheat oven to 425", "Mix chicken with the butter and hot suace", "Spread the salad dressing over crust to taste", "Cover crust with chicken and cheese","Bake for roughly 8 minutes"], ingredientList: [
                                Ingredient(name: "Chicken breasts cubed and pre-cooked", generalName: "chicken", quantity: 3.0, measurment: "N/A"),
                                Ingredient(name: "Melted butter", generalName: "oil", quantity: 2.0, measurment: "T"),
                                Ingredient(name: "Hot Sauce", generalName: "hot spice", quantity: 2.0, measurment: "oz"),
                                Ingredient(name: "Blue cheese dressing", generalName: "oil", quantity: 8.0, measurment: "oz"),
                                Ingredient(name: "Premade Pizza Crust", generalName: "grain", quantity: 16.0, measurment: "in"),
                                Ingredient(name: "Shredded mozzarella cheese", generalName: "cheese", quantity: 8.0, measurment: "oz"),
                              ]
        ))

        //8
        recipes.append(Recipe(name: "Easy Chicken Parm",
                              estimate: "30 minutes",
                              steps: ["Preheat oven to 425","Combine mayo with cheese in bowl","place breast on baaking sheet and coat with mayo and bread crumbs","Bake for 20 minutes"], ingredientList: [
                                Ingredient(name: "Chicken breast", generalName: "chicken", quantity: 4.0, measurment: "N/A"),
                                Ingredient(name: "Mayo", generalName: "oil", quantity: 0.5, measurment: "c"),
                                Ingredient(name: "Italian dried bread crumbs", generalName: "grain", quantity: 4.0, measurment: "t"),
                                Ingredient(name: "grated Parmesan", generalName: "cheese", quantity: 0.25, measurment: "c"),
                              ]
        ))

        //9
        recipes.append(Recipe(name: "Cauliflower Mac-N-Cheese",
                              estimate: "30 minutes",
                              steps: ["Bring a pot of salted water to a boil and cook the macaroni roughly 8 minutes and drain.","Steam cauliflower in a suacepan coverd for roughly 5 minutes", "Blend steamed cauliflower","Put suacepan on medium heat and add oil and flour. Cook until a thick paste forms roughlty 2 minutes","Add Milk to pan strring for roughly 3 minutes.","Mix all ingredients and then serve"], ingredientList: [
                                Ingredient(name: "Elbow Macaroni", generalName: "grain", quantity: 1.5, measurment: "c"),
                                Ingredient(name: "cauliflower", generalName: "vegetable", quantity: 0.5, measurment: "c"),
                                Ingredient(name: "Olive oil", generalName: "oil", quantity: 1.0, measurment: "T"),
                                Ingredient(name: "Milk", generalName: "milk", quantity: 0.5, measurment: "c"),
                                Ingredient(name: "Flour", generalName: "grain", quantity: 1.0, measurment: "T"),
                                Ingredient(name: "Cheddar cheese shredded", generalName: "cheese", quantity: 1.5, measurment: "c"),
                                Ingredient(name: "cream cheese", generalName: "cheese", quantity: 8.0, measurment: "oz"),
                                Ingredient(name: "salt", generalName: "basic spice", quantity: 0.5, measurment: "t"),
                                Ingredient(name: "pepper", generalName: "basic spice", quantity: 0.125, measurment: "t")
                              ]
        ))

        //10
        recipes.append(Recipe(name: "crispy Oraanger Beef",
                              estimate: "1 hour 5 minutes",
                              steps: ["Lay out beef strips on baking sheet, dry for 30 minutes", "In a small bowl mix the sugar, vinegar, orange concetrate, salt, and soy sauce.","Combine rice and water in saucepan, bring to boil and reduce to medium-low heat simmering for about 20 minutes", "Heal oil in wok over medium-high heat", "Toss beef in cornstoach, before frying in the oil and small batches. Set aside coooked beef and drail all but 1 tabelspoon of oil from wok", "Add orange zest, ginger and garlic to the oil cooking till fragrant", "Add soy sauce to the wok, bringing to the boild and cooking for roughly 5 minutes", "Add beef stricitng to coat, after throughly coated server over rice and add broccoli"], ingredientList: [
                                Ingredient(name: "top sirloin sliced", generalName: "beef", quantity: 1.5, measurment: "Lb"),
                                Ingredient(name: "Sugar", generalName: "sugar", quantity: 0.33, measurment: " c"),
                                Ingredient(name: "rice wine vinegar", generalName: "vinegar", quantity: 0.33, measurment: "c"),
                                Ingredient(name: "orange juice concetrate", generalName: "citrus", quantity: 2.0, measurment: "T"),
                                Ingredient(name: "Salt", generalName: "basic spice", quantity: 1.0, measurment: "t"),
                                Ingredient(name: "Soy Sauce", generalName: "flavorful spice", quantity: 1.0, measurment: "T"),
                                Ingredient(name: "long Grain Rice", generalName: "grain", quantity: 1.0, measurment: "c"),
                                Ingredient(name: "Cornstarch", generalName: "grain", quantity: 0.25, measurment: "c"),
                                Ingredient(name: "Orange Zest", generalName: "citrus", quantity: 2.0, measurment: "t"),
                                Ingredient(name: "grated ginger", generalName: "flavorful spice", quantity: 3.0, measurment: "T"),
                                Ingredient(name: "Minced Garlic", generalName: "flavorful spice", quantity: 1.5, measurment: "T"),
                                Ingredient(name: "Broccoli florets", generalName: "vegetable", quantity: 8.00, measurment: "N/A"),
                                Ingredient(name: "Vegetable Oil", generalName: "oil", quantity: 2.0, measurment: "c")
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

        //11
        ingredients.append(Ingredient(name: "raddish, onions, zucchini", generalName: "vegetable", quantity: 0.0, measurment: "N/A"))

        //12
        ingredients.append(Ingredient(name: "Oats, MultiGrain, or Flour", generalName: "grain", quantity: 0.0, measurment: "N/A"))

        //13
        ingredients.append(Ingredient(name: "Cheddar, Swiss, or Munster", generalName: "cheese", quantity: 0.0, measurment: "N/A"))

        //14
        ingredients.append(Ingredient(name: "Eggs", generalName: "egg", quantity: 0.0, measurment: "N/A"))

        //15
        ingredients.append( Ingredient(name: "Beef or Steak", generalName: "beef", quantity: 0.0, measurment: "N/A"))

        //16
        ingredients.append(Ingredient(name: "Mushrooms", generalName: "mushroom", quantity: 0.0, measurment: "N/A"))

        //17
        ingredients.append(Ingredient(name: "Ham, Bacon or Pork", generalName: "pork", quantity: 0.0, measurment: "N/A"))

        //18
        ingredients.append( Ingredient(name: "various vinegar", generalName: "vinegar", quantity: 0.0, measurment: "N/A"))


        return ingredients
    }
}
