//
//  Offer.swift
//  coffee
//
//  Created by Svetlana Zayats on 8/31/25.
//

import SwiftUI

struct Offer: View {
    var title = ""
    var description = ""
    var body: some View {
        ZStack {
            Image("Image")
                .frame(maxWidth: .infinity, maxHeight: 200)
                .clipped()
            VStack {
                Text(title)
                    .padding()
                    .background(Color("CardBackground"))
                Text(description)
                    .padding()
                    .background(Color("CardBackground"))
            }
        }
        
    }
}

#Preview {
    Offer(title: "Title", description: "Description")
}
