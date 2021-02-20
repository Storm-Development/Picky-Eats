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
                Spacer()
                ingredientListScrollView(ingredientList: $cookBook.ingredients )
            }
        }.navigationBarTitle("\(observedUser.info.name)'s Prefrences", displayMode: .inline)
    }

    public func inWhere(ingredientFound: Ingredient) -> String {

        if(observedUser.info.likes.contains(ingredientFound)){
            return "Likes"
        } else if(observedUser.info.dislikes.contains(ingredientFound)){
            return "Dislikes"
        } else {
            return "NA"
        }

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
        Image(systemName: isHappy ? "love": "trash")
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 50, height: 50, alignment: .center)
    }
}

struct ingredientListScrollView: View {
    @Binding var ingredientList: [Ingredient]
    
    var body: some View{
        ScrollView {
            LazyVStack(spacing: 25, content: {
                ForEach(ingredientList, id: \.self) { ingredient in
                    ingredientView(ingredient: ingredient)
                }
            })
        }
    }
}

struct ingredientView: View {
    
    var ingredient: Ingredient
    
    var body: some View {
        HStack{
            styleText(textBody: Text("\(ingredient.generalName)"))
        }.frame(width: 200, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(Color(.black))
        giveImage()
    }

    func giveImage() -> Image? {

        return nil
    }
}
