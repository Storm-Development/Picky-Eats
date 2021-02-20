//
//  ContentView.swift
//  Picky Eats
//
//  Created by Dylan Westfall on 2/19/21.
//

import SwiftUI

struct ContentView: View {
    // Need to save off the base username for multiple sessions
    @State public var userName: String = "User"
    @State public var buttonBacking: Color = Color("GeneralBackDrop")

    var body: some View {
        ZStack{
            backDrop(back: Gradient(colors: [Color("GeneralBackDrop"), Color("TextBackDrop")]))
            VStack{
                Spacer(minLength: 25)
                welcome(userName: $userName)
                Spacer()
                login(userName: $userName)
                Spacer()
                loginButton(buttonBacking: $buttonBacking)
                Spacer()
            }

        }
    }

    public func checkUser(){
        print("Found \(userName)")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct backDrop: View {
    var back: Gradient
    var body: some View {
        LinearGradient(gradient: back,
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct welcome: View {
    @Binding var userName: String
    var body: some View {
        styleText(textBody: Text("Hello \(userName)"), bigOrSmol: true)

    }
}

struct login: View {
    @Binding var userName: String

    var body: some View {
        HStack{
            Spacer()
            Spacer()
            styleText(textBody: Text("Username: "))
            TextField("Username Input Field", text: $userName).font(.system(size: 20, weight: .light, design: .rounded))
                .foregroundColor(.white)

        }.padding(20)

    }
}

struct loginButton: View {
    @Binding var buttonBacking: Color
    var flip: Bool = true

    var body: some View {
        Button("Show me Those Recipes", action: {
        // Action will Move User to Prefrence Screen
        }).font(.system(size: 20, weight: .bold, design: .rounded))
            .frame(width: 260, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
            .background(buttonBacking)
            .shadow(radius: 2)
            .cornerRadius(5.0)

    }

}

struct styleText: View {
    var textBody: Text
    var bigOrSmol: Bool = false
    var body: some View {
        textBody
            .font(.system(size: bigOrSmol ? 30 : 20, weight: .heavy, design: .rounded))
            .foregroundColor(.white)
    }
}
