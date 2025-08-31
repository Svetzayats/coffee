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
            Text("Home page")
                .tabItem {
                    Image(systemName: "cup.and.saucer")
                    Text("Menu")
                }
            OffersPage()
                .tabItem {
                            Image(systemName: "tag")
                            Text("Offers")
                        }
            Text("Order page")
                .tabItem {
                            Image(systemName: "cart")
                            Text("My Order")
                        }
            Text("Info page")
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
