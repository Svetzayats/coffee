//
//  Category.swift
//  coffee
//
//  Created by Svetlana Zayats on 8/31/25.
//

import Foundation

struct Category: Decodable, Identifiable {
    var name: String
    var products: [Product] = []
    var id: String {
        return self.name
    }
    
    func filteredItems(text: String) -> [Product] {
            if text.count > 0 {
                return products.filter({ item in
                    item.name.contains(text)
                })
            } else {
                return products
            }
        }
}
