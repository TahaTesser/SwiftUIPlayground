//
//  PixelatedImage.swift
//  playground
//
//  Created by Taha Tesser on 04.08.2024.
//

import SwiftUI

struct RotatedGestureSample: View {
  @State private var angle: Angle = .degrees(0.0)
    
  var body: some View {
    Image(systemName: "steeringwheel")
      .font(.system(size: 300))
      .shadow(radius: 10)
      .rotationEffect(angle)
      .gesture(
        RotateGesture()
          .onChanged { value in
            self.angle = value.rotation
          }
      )
  }
}

#Preview {
  RotatedGestureSample()
}
