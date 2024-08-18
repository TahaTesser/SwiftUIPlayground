//
//  CompsitingGroupSample.swift
//  playground
//
//  Created by Taha Tesser on 05.08.2024.
//

import SwiftUI

struct CompsitingGroupSample: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(.red)
                .frame(width: 350, height: 124)
                .offset(y: 50)
                .zIndex(1)
            RoundedRectangle(cornerRadius: 25)
                .fill(.red)
                .frame(width: 125, height: 250)
        }
        .compositingGroup()
        .shadow(
            color: .black.opacity(0.4),
            radius: 30,
            y: 30
        )
        .padding()
    }
}

#Preview {
    CompsitingGroupSample()
}
