//
//  VariableValueSample.swift
//  playground
//
//  Created by Taha Tesser on 07.08.2024.
//

import SwiftUI

struct VariableValueSample: View {
  @State private var value: Double = 0.5

  var body: some View {
    VStack {
      HStack {
        Image(systemName: "speaker.wave.3", variableValue: 0)
          .resizable()
          .aspectRatio(contentMode: .fit)
          .padding()
        Image(systemName: "speaker.wave.3", variableValue: 0.3)
          .resizable()
          .aspectRatio(contentMode: .fit)
          .padding()
        Image(systemName: "speaker.wave.3", variableValue: 0.6)
          .resizable()
          .aspectRatio(contentMode: .fit)
          .padding()
        Image(systemName: "speaker.wave.3", variableValue: 0.9)
          .resizable()
          .aspectRatio(contentMode: .fit)
          .padding()
      }.padding()
      VStack {
        Image(systemName: "speaker.wave.3", variableValue: value)
          .resizable()
          .frame(width: 72.0, height: 72.0)
          .padding()
        Slider(value: $value, in: 0...1)
          .padding()
      }.padding()
    }
  }
}

#Preview {
  VariableValueSample()
}
