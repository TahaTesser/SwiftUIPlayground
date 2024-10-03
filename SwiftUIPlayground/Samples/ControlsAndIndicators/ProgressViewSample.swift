//
//  ProgressViewSample.swift
//  SwiftUIPlayground
//
//  Created by Taha Tesser on 03.10.2024.
//

import SwiftUI

struct ProgressViewSample: View {
    @State private var progress = 0.5

    var body: some View {
        VStack {
            ProgressView()
            ProgressView(value: progress)
            Button("More") { progress += 0.05 }
        }
        .padding()
    }
}

#Preview {
    ProgressViewSample()
}
