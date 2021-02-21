//
//  RecipePicker.swift
//  Picky Eats
//
//  Created by Dylan Westfall on 2/19/21.
//

import SwiftUI

struct RecipePicker: View {
    @ObservedObject public var observedUser: observableUser
    @ObservedObject public var cookBook: CookBook
    @State var currentRecipe: Recipe?
    
    var body: some View {
        ZStack{
            backDrop(back: Gradient(colors: [Color("GeneralBackDrop"), Color("TextBackDrop")]))
            VStack{
                Text("Hello, \(observedUser.info.name) welcome to the Recipe Pikcer")
                HStack{
                    Button("Select a Random Recipe", action: {
                        guard cookBook.recipes.count > 0 else {return}
                        let randIndex = Int.random(in: 0...cookBook.recipes.count - 1)
                        // keep running random till the following criteria are met
                        // 1. Recipe must contain at least 1 liked item
                        // 2. Recipe must contain 1 disliked item no more no less
                        currentRecipe = cookBook.recipes[randIndex]
                    })
                    LazyVStack(spacing: 20, content: {
                        ForEach(cookBook.recipes, id: \.self) { item in
                            Text("\(item.name)")
                        }
                    })
                }
                Spacer()
                RecipeView(recipe: $currentRecipe)
            }

        }
        .navigationBarTitle("History")
        .navigationBarHidden(true)
    }
}

struct RecipePicker_Previews: PreviewProvider {
    static var previews: some View {
        RecipePicker(observedUser: observableUser(), cookBook: CookBook())
    }
}

struct RecipeView: View {
    @Binding var recipe: Recipe?



    var body: some View {
        guard let checkedRecipe: Recipe = recipe else {
            return AnyView(EmptyView())
        }

        return AnyView(
            VStack{
                HStack{
                    Text(checkedRecipe.name)
                    Text("Recipe should take roughly: \(checkedRecipe.estimate)")
                }
                HStack{
                    //Ingredient List
                    LazyVStack(spacing: 20, content: {
                        ForEach(checkedRecipe.ingredientList, id: \.self) { ingredient in
                            Text("\(measurmentForIngredient(ingredient: ingredient)) \(ingredient.name)")
                        }
                    })
                    //Steps
                    LazyVStack(spacing: 20, content: {
                        ForEach(checkedRecipe.steps, id: \.self) { step in
                            Text(step)
                        }
                    })
                }
            })

    }

    func measurmentForIngredient(ingredient: Ingredient) -> String {

        return ""
    }
}
