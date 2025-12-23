//
//  SliderSample.swift
//  playground
//
//  Created by Taha Tesser on 08.08.2024.
//

import SwiftUI

struct SliderSample: View {
  @State var sliderValue = 50.0
  @State var isEditing = false

  var body: some View {
    VStack {
      Slider(
        value: $sliderValue,
        in: 0...100,
        onEditingChanged: { editing in
          isEditing = editing
        }
      )
      Text("\(sliderValue)")
        .foregroundStyle(isEditing ? .red : .blue)
    }.padding()
  }
}

#Preview {
  SliderSample()
}
