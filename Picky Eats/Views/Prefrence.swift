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
                styleText(textBody: Text("\(observedUser.info.name) What do you like and dislike?"))
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10, content:{
                    likesView(ingredientList: $observedUser.info.likes).background(Color("GeneralBackDrop"))
                    RoundedRectangle(cornerRadius: 1.0, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                        .frame(width: 10, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color("GeneralBackDrop"))
                    likesView(ingredientList: $observedUser.info.dislikes, likes: false).background(Color("GeneralBackDrop"))
                }).frame(minWidth: 0, idealWidth: 100, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 180, idealHeight: 180, maxHeight: 180, alignment: .top)
                .background(Color("TextBackDrop"))
                .cornerRadius(10.0)
                .padding()

                ingredientListScrollView(ingredientList: $cookBook.ingredients, likes: $observedUser.info.likes, dislikes: $observedUser.info.dislikes )
                NavigationLink(
                    destination: TabBarHandler(observedUser: observedUser, cookBook: cookBook),
                    label: {
                        Text("I'm Ready to Eat!!!")
                            .font(.system(size: 20, weight: .bold, design: .rounded))
                            .frame(width: 260, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("GeneralBackDrop"))
                            .foregroundColor(.white)
                            .shadow(radius: 2)
                            .cornerRadius(5.0)

                    })
                
            }
        }.navigationBarTitle("Prefrence")
        .navigationBarHidden(true)
    }
}

struct Prefrence_Previews: PreviewProvider {
    static var previews: some View {
        Prefrence(observedUser: observableUser(), cookBook: CookBook())
    }
}

public struct prefSubView: View {
    var ingredient: Ingredient
    
    public var body: some View {

        HStack{
            styleText(textBody: Text("\(ingredient.name)"), fontSize: 12.0).padding(10)
        }.background(Color("TextBackDrop"))
        .shadow(radius: 2)
        .cornerRadius(5.0)
    }
}

public struct likesView: View {
    @Binding var ingredientList: [Ingredient]
    var likes: Bool = true
    public var body: some View {
        VStack{
            HStack{
                Spacer()
                styleText(textBody: Text("Your \(likes ? "Likes" : "Dislikes")"))
                Spacer()
                RoundedRectangle(cornerRadius: 1.0, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                    .frame(width: 4, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color("GeneralBackDrop"))
                mrMood(isHappy: likes)
            }
            .background(Color("TextBackDrop"))


            ScrollView {
                LazyVStack(spacing: 10, content: {
                    ForEach(ingredientList, id: \.self) { ingredient in
                        prefSubView(ingredient: ingredient).id(UUID())

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
            .frame(width: 35, height: 35, alignment: .topLeading)
            .padding(.top, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
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
                    ingredientView(ingredient: ingredient, likes: $likes, dislikes: $dislikes).id(UUID())
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
            Spacer(minLength: 10)
            styleText(textBody: Text("\(ingredient.name)"))
            Spacer()
            RoundedRectangle(cornerRadius: 1.0, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                .frame(width: 10, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color("GeneralBackDrop"))
            likeButton(ingredient: ingredient, ingredientList: $likes, opposingList: $dislikes)
            likeButton(ingredient: ingredient, ingredientList: $dislikes, opposingList: $likes, shouldLike: false)
        }.frame(width: 360, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(Color("TextBackDrop"))

    }
}

struct likeButton: View {
    var ingredient: Ingredient
    @Binding var ingredientList: [Ingredient]
    @Binding var opposingList: [Ingredient]
    var shouldLike: Bool = true

    var body: some View {

        Button(action: {
            checkIngredients()
        }) {
            Image(systemName: shouldLike ? "heart" : "trash")
        }.background(Color("generalBackDrop"))

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
