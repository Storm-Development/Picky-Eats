//
//  UserInfo.swift
//  Picky Eats
//
//  Created by Dylan Westfall on 2/20/21.
//

import Foundation

struct UserInfo: Codable {
    var name: String
    var likes: [Ingredient]
    var dislikes: [Ingredient]
    var lastSevenRecipes: [Recipe]
}

class observableUser: ObservableObject {
    @Published var info: UserInfo

    init(){
        info = UserInfo(name: "User", likes: [Ingredient(name: "Whole Milk", generalName: "Milk", quantity: 1.0, measurment: "c")], dislikes: [Ingredient(name: "Avacado", generalName: "Avacado", quantity: 1.0, measurment: "ct")], lastSevenRecipes: [Recipe(name: "Fries", estimate: "30 minutes", steps: ["Step One Cook the fries","Step two give up"], ingredientList: [Ingredient(name: "Whole Milk", generalName: "Milk", quantity: 1.0, measurment: "c")]),Recipe(name: "Cake", estimate: "30 minutes", steps: ["Step One Cook the cake","Step two give up again"], ingredientList: [Ingredient(name: "Whole Milk", generalName: "Milk", quantity: 1.0, measurment: "c")])])
    }
}
