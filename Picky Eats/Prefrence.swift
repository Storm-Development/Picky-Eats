//
//  Prefrence.swift
//  Picky Eats
//
//  Created by Dylan Westfall on 2/19/21.
//

import SwiftUI

struct Prefrence: View {
    var body: some View {
        ZStack{
            backDrop(back: Gradient(colors: [Color("GeneralBackDrop"), Color("TextBackDrop")]))
            VStack{
            HStack{
                prefSubView()
                Spacer()
                prefSubView()
            }
                Spacer()
            }
        }
    }
}

struct Prefrence_Previews: PreviewProvider {
    static var previews: some View {
        Prefrence()
    }
}


struct prefSubView: View {
    var body: some View {
        Text("Taco")
    }
}

struct ingredientList: View {
    var body: some View {
        Text("Taco")
    }
}

struct ingredientView: View {
    var body: some View {

            Text("Taco")


    }
}
