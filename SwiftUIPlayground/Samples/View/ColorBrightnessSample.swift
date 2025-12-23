//
//  ColorBrightnessSample.swift
//  SwiftUIPlayground
//
//  Created by Taha Tesser on 20.12.2024.
//

import SwiftUI

struct ColorBrightnessSample: View {
  var body: some View {
    ForEach(0..<8) { num in
      Color.purple
        .brightness(Double(num) * -0.1)
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
    .padding(.horizontal)
  }
}

#Preview {
  ColorBrightnessSample()
}
