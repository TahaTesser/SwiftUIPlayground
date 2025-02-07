//
//  FlipperAnimationSample.swift
//  SwiftUIPlayground
//
//  Created by Taha Tesser on 05.01.2025.
//

import SwiftUI

struct FlipperAnimationSample: View {
    @State private var timer: Timer?
    @State private var flipped: Bool = false

    var body: some View {
        ZStack {
            Image(.joker)
                .rotation3DEffect(.degrees(flipped ? -180 : 0), axis: (x: 1.0, y: 0.0, z: 0.0))
                .opacity(flipped ? 0 : 1)

            Image(.redDeck)
                .rotation3DEffect(.degrees(flipped ? 0 : 180), axis: (x: 1.0, y: 0.0, z: 0.0))
                .opacity(flipped ? 1 : 0)
        }
        .onAppear {
            timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in

                withAnimation(.spring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.2)) {
                    flipped.toggle()
                }
            }
        }
        .onDisappear {
            timer?.invalidate()
            timer = nil
        }
    }
}

#Preview {
    FlipperAnimationSample()
}
