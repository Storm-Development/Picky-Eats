//
//  ContentView.swift
//  Picky Eats
//
//  Created by Dylan Westfall on 2/19/21.
//

import SwiftUI

struct LogIn: View {
    // Need to save off the base username for multiple sessions
    @ObservedObject public var observedUser: observableUser
    @ObservedObject public var cookBook: CookBook
    @State public var buttonBacking: Color = Color("GeneralBackDrop")

    var body: some View {
            ZStack{
            backDrop(back: Gradient(colors: [Color("GeneralBackDrop"), Color("TextBackDrop")]))
            VStack{
                welcome(userName: $observedUser.info.name)
                Spacer()
                NavigationLink(
                    destination: Prefrence(observedUser: observedUser, cookBook: cookBook),
                    label: {
                        Text("Set my Prefrences")
                            .font(.system(size: 20, weight: .bold, design: .rounded))
                            .frame(width: 260, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .background(self.buttonBacking)
                            .shadow(radius: 2)
                            .cornerRadius(5.0)
                    })
                Spacer()
            }

        }
    }

    public func checkUser(){
        print("Found \($observedUser.info.name)")
    }
}


struct LogIn_Previews: PreviewProvider {
    static var previews: some View {
        LogIn(observedUser: observableUser(), cookBook: CookBook())
    }
}

public struct backDrop: View {
    var back: Gradient
    public var body: some View {
        LinearGradient(gradient: back,
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct welcome: View {
    @Binding var userName: String
    var body: some View {
        styleText(textBody: Text("Welcome To Picky Eaters"), fontSize: 30.0)
        Spacer()
        styleText(textBody: Text("How should we refer to you?"), fontSize: 30.0)
        TextField("Username", text: $userName).font(.system(size: 20, weight: .bold, design: .rounded))
            .foregroundColor(.white).multilineTextAlignment(.center)
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

struct logo: View {
    var body: some View {
        Text("LOGO")
    }
}

public struct styleText: View {
    var textBody: Text
    var fontSize: Float = 16
    public var body: some View {
        textBody
            .font(.system(size: CGFloat(fontSize), weight: .heavy, design: .rounded))
            .foregroundColor(.white)
    }
}
