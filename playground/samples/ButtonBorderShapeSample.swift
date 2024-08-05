//
//  ButtonBorderShapeSample.swift
//  playground
//
//  Created by Taha Tesser on 05.08.2024.
//

import SwiftUI

struct ButtonBorderShapeSample: View {
    var body: some View {
        VStack {
          Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Image(systemName: "macbook.gen2")
          })
          .controlSize(.large)
          .tint(.red)
          .buttonStyle(.bordered)
          .buttonBorderShape(.roundedRectangle)
          
          Button(action: {}, label: {
            Image(systemName: "iphone.gen3")
          })
          .controlSize(.large)
          .tint(.purple)
          .buttonStyle(.bordered)
          .buttonBorderShape(.roundedRectangle(radius: 8))
          
          Button(action: {}, label: {
            Image(systemName: "applewatch")
          })
          .controlSize(.large)
          .tint(.green)
          .buttonStyle(.bordered)
          .buttonBorderShape(.circle)
          
          Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Image(systemName: "visionpro")
              .padding(.all, 2)
          })
          .controlSize(.large)
          .tint(.blue)
          .buttonStyle(.bordered)
          .buttonBorderShape(.capsule)
        }
    }
}

#Preview {
    ButtonBorderShapeSample()
}
