//
//  MaskingSample.swift
//  playground
//
//  Created by Taha Tesser on 11.08.2024.
//

import SwiftUI

struct MaskingSample: View {
    var body: some View {
        Image("park")
            .resizable()
            .scaledToFit()
            .ignoresSafeArea()
            .mask {
                Image(systemName: "apple.logo")
                    .font(.system(size: 200))
            }
            .shadow(radius: 10)
    }
}

#Preview {
    MaskingSample()
}
