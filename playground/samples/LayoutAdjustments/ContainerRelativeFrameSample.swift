//
//  ContainerRelativeFrameSample.swift
//  playground
//
//  Created by Taha Tesser on 05.08.2024.
//

import SwiftUI

struct ContainerRelativeFrameSample: View {
    var body: some View {
        ZStack {
            Color.purple
                .containerRelativeFrame(.horizontal) { size, _ in
                    size / 2
                }
            Text("1/2 of the horizontal width")
                .font(.footnote)
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    ContainerRelativeFrameSample()
}
