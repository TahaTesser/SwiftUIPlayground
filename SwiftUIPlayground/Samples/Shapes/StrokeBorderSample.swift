//
//  StrokeBorderSample.swift
//  SwiftUIPlayground
//
//  Created by Taha Tesser on 24.12.2024.
//

import SwiftUI

struct StrokeBorderSample: View {
    var body: some View {
        Circle()
            .strokeBorder(.blue.opacity(0.2), lineWidth: 70)
            .strokeBorder(.blue.opacity(0.4), lineWidth: 50)
            .strokeBorder(.blue.opacity(0.5), lineWidth: 30)
            .strokeBorder(.blue, lineWidth: 10)
            .padding()
    }
}

#Preview {
    StrokeBorderSample()
}
