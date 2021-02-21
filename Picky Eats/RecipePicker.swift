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
                HStack{
                    Button("Select a Random Recipe", action: {
                        findRecipe()
                    })
                    ScrollView {
                    LazyVStack(spacing: 20, content: {
                        ForEach(cookBook.recipes, id: \.self) { item in
                            Text("\(item.name)")
                        }
                    })
                    }
                }.frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Spacer()
                RecipeView(recipe: $currentRecipe)
            }

        }
        .navigationBarTitle("History")
        .navigationBarHidden(true)
    }

    // Look into creating a list to randomly select from instead of randomly selecting from main list
    func findRecipe() {
        guard cookBook.recipes.count > 0 else {return}
        var recipeToCheck: Recipe?
        while(!approvedMeal(recipe: recipeToCheck)){
            let randIndex = Int.random(in: 0...cookBook.recipes.count - 1)
            recipeToCheck = cookBook.recipes[randIndex]

        }

        currentRecipe = recipeToCheck
    }

    func approvedMeal(recipe: Recipe?) -> Bool{
        guard let approvedRecipe = recipe else { return false}

        var likeCondition = false
        var dislikeCount = 0

        approvedRecipe.ingredientList.forEach { ingredient in
            if(observedUser.info.likes.contains { (value) -> Bool in
                return value.generalName == ingredient.generalName
            }) {
                likeCondition = true
            }
        }

        approvedRecipe.ingredientList.forEach { ingredient in
            if(observedUser.info.dislikes.contains { (value) -> Bool in
                return value.generalName == ingredient.generalName
            }) {
                dislikeCount += 1
            }
        }

        return (likeCondition && dislikeCount == 1)

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
                    Text("Estimated Time: \(checkedRecipe.estimate)")
                }
                Spacer()
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10, content: {
                    //Ingredient List
                    ScrollView {
                    LazyVStack(spacing: 20, content: {
                        ForEach(checkedRecipe.ingredientList, id: \.self) { ingredient in
                            Text("\(measurmentForIngredient(ingredient: ingredient)) \(ingredient.name)")
                        }
                    })
                    }
                    //Steps
                    ScrollView {
                    LazyVStack(spacing: 20, content: {
                        ForEach(checkedRecipe.steps, id: \.self) { step in
                            Text(step)
                        }
                    })
                    }
                })
            })

    }

    func measurmentForIngredient(ingredient: Ingredient) -> String {

        return ""
    }
}
