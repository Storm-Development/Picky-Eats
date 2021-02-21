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
                }.padding(20)
                Spacer()
                HStack{
                    likesView(ingredientList: $observedUser.info.likes)
                    dislikesView(ingredientList: $observedUser.info.dislikes)
                }
                LazyHStack(spacing: 20, content: {
                    ForEach(observedUser.info.lastSevenRecipes, id: \.self) { recipe in
                        Text("I Ate \(recipe.name)")
                    }
                })

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
