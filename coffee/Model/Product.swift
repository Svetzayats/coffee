//
//  Product.swift
//  coffee
//
//  Created by Svetlana Zayats on 8/31/25.
//

import Foundation

struct Product: Decodable {
    var id: Int
    var name: String
    var description: String?
    var price: Double
    var image: String = ""
    
    var imageURL: URL {
        URL(string: "https://firtman.github.io/coffeemasters/api/images/\(self.image)")!
    }
}
