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
    
    var body: some View {
        ZStack{
            backDrop(back: Gradient(colors: [Color("GeneralBackDrop"), Color("TextBackDrop")]))
            VStack{
                Text("Hello, \(observedUser.info.name) welcome to the Recipe Pikcer")
                Spacer()
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
