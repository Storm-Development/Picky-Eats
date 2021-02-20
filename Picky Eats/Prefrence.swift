//
//  Prefrence.swift
//  Picky Eats
//
//  Created by Dylan Westfall on 2/19/21.
//

import SwiftUI

struct Prefrence: View {
    
    @ObservedObject public var observedUser: observableUser
    @ObservedObject public var cookBook: CookBook

    var body: some View {
        ZStack{
            backDrop(back: Gradient(colors: [Color("GeneralBackDrop"), Color("TextBackDrop")]))
            VStack{
                Text("\(observedUser.info.name) What do you like and dislike?")
                HStack{
                    likesView(ingredientList: $observedUser.info.likes)
                    dislikesView(ingredientList: $observedUser.info.dislikes)
                }
                ingredientListScrollView(ingredientList: $cookBook.ingredients, likes: $observedUser.info.likes, dislikes: $observedUser.info.dislikes )
            }
        }.navigationBarTitle("\(observedUser.info.name)'s Prefrences", displayMode: .inline)
    }
}

struct Prefrence_Previews: PreviewProvider {
    static var previews: some View {
        Prefrence(observedUser: observableUser(), cookBook: CookBook())
    }
}

struct prefSubView: View {
    var ingredient: Ingredient
    
    var body: some View {

        HStack{
            Text("\(ingredient.generalName)")
        }
    }
}

struct likesView: View {
    @Binding var ingredientList: [Ingredient]
    
    var body: some View {
        VStack{
            mrMood(isHappy: true)
            ScrollView {
                LazyVStack(spacing: 10, content: {
                    ForEach(ingredientList, id: \.self) { ingredient in
                        prefSubView(ingredient: ingredient)
                    }
                })
            }
        }
    }
}

struct dislikesView: View {
    @Binding var ingredientList: [Ingredient]
    
    var body: some View {
        VStack{
            mrMood()
            ScrollView {
                LazyVStack(content: {
                    ForEach(ingredientList, id: \.self) { ingredient in
                        prefSubView(ingredient: ingredient)
                    }
                })
            }
        }
    }
}

struct mrMood: View {
    var isHappy: Bool = false
    var body: some View {
        Image(systemName: isHappy ? "heart": "trash")
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 50, height: 50, alignment: .center)
    }
}

struct ingredientListScrollView: View {
    @Binding var ingredientList: [Ingredient]
    @Binding var likes: [Ingredient]
    @Binding var dislikes: [Ingredient]
    
    var body: some View{
        ScrollView {
            LazyVStack(spacing: 20, content: {
                ForEach(ingredientList, id: \.self) { ingredient in
                    ingredientView(ingredient: ingredient, likes: $likes, dislikes: $dislikes)
                }
            })
        }
    }
}

struct ingredientView: View {
    
    var ingredient: Ingredient
    @Binding var likes: [Ingredient]
    @Binding var dislikes: [Ingredient]

    var body: some View {
        HStack{
            styleText(textBody: Text("\(ingredient.generalName)"))
            ingImage()
            likeButton(ingredient: ingredient, ingredientList: $likes, opposingList: $dislikes)
            likeButton(ingredient: ingredient, ingredientList: $dislikes, opposingList: $likes, shouldLike: false)
        }.frame(width: 360, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(Color("TextBackDrop"))

    }
}

struct ingImage: View {
    var body: some View {
        Image(systemName: "stop")
    }
}

struct likeButton: View {
    var ingredient: Ingredient
    @Binding var ingredientList: [Ingredient]
    @Binding var opposingList: [Ingredient]
    var shouldLike: Bool = true

    var body: some View {
        Button(shouldLike ? "Like" : "Dislike") {
            checkIngredients()
        }
    }

    func checkIngredients(){
        if(ingredientList.contains(ingredient)){
            guard let index = ingredientList.firstIndex(of: ingredient) else {
                return
            }
            ingredientList.remove(at: index)
            print("popped \(ingredient.name) from \(shouldLike ? "Like" : "Dislike")")
        } else {
            ingredientList.append(ingredient)
            if(opposingList.contains(ingredient)){
                guard let index = opposingList.firstIndex(of: ingredient) else {
                    return
                }
                opposingList.remove(at: index)
                print("popped \(ingredient.name) from \(shouldLike ? "DisLike" : "Like")")
            }
            print("append \(ingredient.name) from \(shouldLike ? "Like" : "Dislike")")
        }
    }
}
