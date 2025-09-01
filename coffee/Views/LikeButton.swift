//
//  LikeButton.swift
//  coffee
//
//  Created by Svetlana Zayats on 9/1/25.
//

import SwiftUI

struct LikeButton: View {
    @EnvironmentObject var likesManager: LikesManager
    
    var product: Product
    
    var body: some View {
        Image(systemName: likesManager.isLiked(id: product.id) ? "heart.fill" : "heart")
            .padding()
            .foregroundColor(Color("Secondary"))
            .accessibilityLabel(likesManager.isLiked(id: product.id) ? "Dislike" : "Like")
            .onTapGesture {
                likesManager.toggle(product.id)
            }
    }
}

#Preview {
    LikeButton(product: Product(id: 1, name: "Coffee", description: nil, price: 1.5, image:""))
        .environmentObject(LikesManager())
}
