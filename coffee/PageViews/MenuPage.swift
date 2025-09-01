//
//  MenuPage.swift
//  coffee
//
//  Created by Svetlana Zayats on 8/31/25.
//

import SwiftUI

struct MenuPage: View {
    @EnvironmentObject var menuManager: MenuManager
    @State var search: String = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach (menuManager.menu) { category in
                    if category.filteredItems(text: search).count > 0 {
                            Text(category.name)
                            .listRowBackground(Color("Background"))
                            .foregroundColor(Color("Secondary"))
                            .padding()
                        }
                    ForEach(category.filteredItems(text: search)) { item in
                            ZStack {
                                NavigationLink(destination: DetailsPage(product: item)) {
                                }.opacity(0)
                                ProductItem(product: item)
                                    .padding(.top)
                                    .padding(.leading)
                                    .padding(.bottom, 12)

                            }
                            
                        }
                }
            }.navigationTitle("Products")
                .searchable(text: $search)
        }
    }
}


#Preview {
    MenuPage()
        .environmentObject(MenuManager())
}
