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
        
        VStack {
            Text(title)
                .padding()
            Text(description)
                .padding()
        }
    }
}

#Preview {
    Offer(title: "Title", description: "Description")
}
