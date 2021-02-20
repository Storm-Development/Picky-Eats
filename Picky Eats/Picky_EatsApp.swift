//
//  Picky_EatsApp.swift
//  Picky Eats
//
//  Created by Dylan Westfall on 2/19/21.
//

import SwiftUI

@main
struct Picky_EatsApp: App {
    @ObservedObject private var userInfo = observableUser()
    @ObservedObject private var cookBook = CookBook()

    var body: some Scene {
        WindowGroup {
            NavigationView{
                LogIn(observedUser: userInfo, cookBook: cookBook)
            }
        }
    }
}
