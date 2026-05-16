//
//  GlassEffectContainerSample.swift
//  SwiftUIPlayground
//
//  Created by Taha Tesser on 24.12.2025.
//

import SwiftUI

struct GlassEffectContainerSample: View {
  @Namespace var tools

  var body: some View {
    ScrollView {
      Color.red.frame(height: 300)
      Color.yellow.frame(height: 300)
      Color.green.frame(height: 300)
      Color.black.frame(height: 300)
      Color.orange.frame(height: 300)
      Color.blue.frame(height: 300)
      Color.brown.frame(height: 300)
    }
    .safeAreaInset(edge: .bottom) {
      VStack {
        GlassEffectContainer {
          HStack {
            Image(systemName: "pencil")
              .font(.title)
              .frame(width: 40, height: 40)
              .padding()
              .glassEffect(.regular.interactive())
              .glassEffectUnion(id: "tools", namespace: tools)

            Image(systemName: "eraser")
              .font(.title)
              .frame(width: 40, height: 40)
              .padding()
              .glassEffect(.regular.interactive())
              .glassEffectUnion(id: "tools", namespace: tools)

          }
        }

        GlassEffectContainer(spacing: 32) {
          HStack {
            Image(systemName: "pencil")
              .font(.title)
              .frame(width: 40, height: 40)
              .padding()
              .glassEffect(.regular.interactive())
            Image(systemName: "eraser")
              .font(.title)
              .frame(width: 40, height: 40)
              .padding()
              .glassEffect(.regular.interactive())
          }
        }
      }
    }
  }
}

#Preview {
  GlassEffectContainerSample()
}
