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
}
