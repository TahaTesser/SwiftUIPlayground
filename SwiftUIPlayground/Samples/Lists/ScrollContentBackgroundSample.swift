//
//  ScrollContentBackgroundSample.swift
//  SwiftUIPlayground
//
//  Created by Taha Tesser on 27.09.2024.
//

import SwiftUI

struct ScrollContentBackgroundSample: View {
    var body: some View {
        List {
            Text("One")
            Text("Two")
            Text("Three")
        }
        .background(Image(.sequoia))
        .scrollContentBackground(.hidden)
    }
}

#Preview {
    ScrollContentBackgroundSample()
}
