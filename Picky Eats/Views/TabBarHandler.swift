//
//  TabBarHandler.swift
//  Picky Eats
//
//  Created by Dylan Westfall on 2/20/21.
//

import SwiftUI

struct TabBarHandler: View {
    @ObservedObject public var observedUser: observableUser
    @ObservedObject public var cookBook: CookBook

    init() {
       UITabBar.appearance().barTintColor = UIColor(Color("TextBackDrop"))
        UITabBar.appearance().isTranslucent = false
        observedUser = observableUser()
        cookBook = CookBook()

     }

    init(observedUser: observableUser, cookBook: CookBook){
        UITabBar.appearance().barTintColor = UIColor(Color("TextBackDrop"))
        UITabBar.appearance().isTranslucent = false
        self.observedUser = observedUser
        self.cookBook = cookBook
    }

    var body: some View {
        TabView(content:  {
                    RecipePicker(observedUser: observedUser, cookBook: cookBook).tabItem { Text("Recipe Selector")}.tag(1)
                    UserHistory(observedUser: observedUser, cookBook: cookBook).tabItem { Text("User History") }.tag(2)
                }).accentColor(.white)
    }
}

struct TabBarHandler_Previews: PreviewProvider {
    static var previews: some View {
        TabBarHandler(observedUser: observableUser(), cookBook: CookBook())
    }
}
