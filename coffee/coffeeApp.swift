//
//  coffeeApp.swift
//  coffee
//
//  Created by Svetlana Zayats on 8/31/25.
//

import SwiftUI

@main
struct coffeeApp: App {
    var menuManager = MenuManager()
    var cartManager = CartManager()
    var likesManager = LikesManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menuManager)
                .environmentObject(cartManager)
                .environmentObject(likesManager)
        }
    }
}
