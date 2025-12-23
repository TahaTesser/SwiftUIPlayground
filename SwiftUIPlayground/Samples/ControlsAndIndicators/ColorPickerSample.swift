//
//  ColorPickerSample.swift
//  SwiftUIPlayground
//
//  Created by Taha Tesser on 26.09.2024.
//

import SwiftUI

struct ColorPickerSample: View {
  @State private var bgColor =
    Color(.sRGB, red: 0.98, green: 0.9, blue: 0.2)

  var body: some View {
    VStack {
      ColorPicker("Alignment Guides", selection: $bgColor)
    }
    .padding()
  }
}

#Preview {
  ColorPickerSample()
}
