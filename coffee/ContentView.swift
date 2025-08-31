//
//  ContentView.swift
//  coffee
//
//  Created by Svetlana Zayats on 8/31/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MenuPage()
                .tabItem {
                    Image(systemName: "cup.and.saucer")
                    Text("Menu")
                }
            OffersPage()
                .tabItem {
                            Image(systemName: "tag")
                            Text("Offers")
                        }
            OrdersPage()
                .tabItem {
                            Image(systemName: "cart")
                            Text("My Order")
                        }
            InfoPage()
                .tabItem {
                            Image(systemName: "info.circle")
                            Text("Info")
                        }
        }
    }
}

#Preview {
    ContentView()
}
