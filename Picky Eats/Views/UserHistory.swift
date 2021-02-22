//
//  UserHistory.swift
//  Picky Eats
//
//  Created by Dylan Westfall on 2/19/21.
//

import SwiftUI

struct UserHistory: View {
    @ObservedObject public var observedUser: observableUser
    @ObservedObject public var cookBook: CookBook
    
    var body: some View {
        ZStack{
            backDrop(back: Gradient(colors: [Color("GeneralBackDrop"), Color("TextBackDrop")]))
            VStack{
                HStack{
                    Image(systemName: "person.circle").renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50, alignment: .center)
                    TextField("Username Input Field", text: $observedUser.info.name).font(.system(size: 30, weight: .light, design: .rounded))
                }.padding(.top,20)
                .background(Color("GeneralBackDrop"))
                HStack{
                    likesView(ingredientList: $observedUser.info.likes)
                    likesView(ingredientList: $observedUser.info.dislikes,
                              likes: false)
                }



                VStack(spacing: 20, content: {
                    styleText(textBody:Text("Last Seven Meals Ate:"))
                        .shadow(radius: 2)
                        .cornerRadius(5.0)
                        .padding(.top, 4.0)
                    RoundedRectangle(cornerRadius: 1.0)
                        .frame(width: .infinity, height: 10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color("GeneralBackDrop"))
                    ForEach(observedUser.info.lastSevenRecipes, id: \.self) { recipe in
                        styleText(textBody: Text(recipe.recipe.name))
                    }
                })
                .background(Color("TextBackDrop"))
                .shadow(radius: 2)
                .cornerRadius(5.0)


                Spacer()

            }

        }
        .navigationBarTitle("History")
        .navigationBarHidden(true)
    }
}

struct UserHistory_Previews: PreviewProvider {
    static var previews: some View {
        UserHistory(observedUser: observableUser(), cookBook: CookBook())
    }
}
