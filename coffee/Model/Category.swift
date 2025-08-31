//
//  Category.swift
//  coffee
//
//  Created by Svetlana Zayats on 8/31/25.
//

import Foundation

struct Category: Decodable {
    var name: String
    var products: [Product] = []
}
