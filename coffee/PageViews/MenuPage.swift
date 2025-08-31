//
//  MenuPage.swift
//  coffee
//
//  Created by Svetlana Zayats on 8/31/25.
//

import SwiftUI

struct MenuPage: View {
    var body: some View {
        NavigationView {
            List {
                ForEach (0 ..< 15) { item in
                    NavigationLink {
                        DetailsPage(product: Product(id: 1, name: "Coffee", description: nil, price: 1.5, image:""))
                    } label: {
                        ProductItem(product: Product(id: 1, name: "Coffee", description: nil, price: 1.5, image:""))
                    }
                }
            }.navigationTitle("Products")
        }
    }
}


#Preview {
    MenuPage()
}
