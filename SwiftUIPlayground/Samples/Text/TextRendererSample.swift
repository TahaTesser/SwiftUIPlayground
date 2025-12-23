//
//  TextRendererSample.swift
//  playground
//
//  Created by Taha Tesser on 05.08.2024.
//

import SwiftUI

struct TextRendererSample: View {
  @State private var amount = -10.0
  @State private var strength = 0.0

  var body: some View {
    VStack(spacing: 16.0) {
      Text("Hello,\nWorld! ")
        .font(.largeTitle)
        .textRenderer(ZebraStripeRenderer())

      Text("Hello, World!")
        .font(.largeTitle)
        .textRenderer(BoxedRenderer())

      Text("Hello, World!")
        .font(.largeTitle)
        .textRenderer(WaveRenderer(strength: amount, frequency: 0.5))
        .onAppear {
          withAnimation(
            .easeInOut(duration: 1).repeatForever(autoreverses: true)
          ) {
            amount = 10
          }
        }

      Text("Hello, World!")
        .font(.largeTitle)
        .textRenderer(QuakeRenderer(moveAmount: strength))
        .onAppear {
          withAnimation(
            .easeInOut(duration: 1).repeatForever(autoreverses: true)
          ) {
            strength = 10
          }
        }
    }
    .padding()
  }
}

#Preview {
  TextRendererSample()
}

struct ZebraStripeRenderer: TextRenderer {
  func draw(layout: Text.Layout, in context: inout GraphicsContext) {
    for (index, line) in layout.enumerated() {
      if index.isMultiple(of: 2) {
        context.opacity = 1
      } else {
        context.opacity = 0.3
      }

      context.draw(line)
    }
  }
}

struct BoxedRenderer: TextRenderer {
  func draw(layout: Text.Layout, in context: inout GraphicsContext) {
    for line in layout {
      for run in line {
        for glyph in run {
          context
            .stroke(
              Rectangle().path(in: glyph.typographicBounds.rect),
              with: .color(.blue),
              lineWidth: 2
            )
        }
        context
          .stroke(
            Rectangle().path(in: run.typographicBounds.rect),
            with: .color(.green),
            lineWidth: 2
          )
      }

      context
        .stroke(
          Rectangle().path(in: line.typographicBounds.rect),
          with: .color(.red),
          lineWidth: 2
        )
      context.draw(line)
    }
  }
}

struct WaveRenderer: TextRenderer {
  var strength: Double
  var frequency: Double

  var animatableData: Double {
    get { strength }
    set { strength = newValue }
  }

  func draw(layout: Text.Layout, in context: inout GraphicsContext) {
    for line in layout {
      for run in line {
        for (index, glyph) in run.enumerated() {
          let yOffset = strength * sin(Double(index) * frequency)
          var copy = context

          copy.translateBy(x: 0, y: yOffset)
          copy.draw(glyph, options: .disablesSubpixelQuantization)
        }
      }
    }
  }
}

struct QuakeRenderer: TextRenderer {
  var moveAmount: Double

  var animatableData: Double {
    get { moveAmount }
    set { moveAmount = newValue }
  }

  func draw(layout: Text.Layout, in context: inout GraphicsContext) {
    for line in layout {
      for run in line {
        for glyph in run {
          var copy = context
          let yOffset = Double.random(in: -moveAmount...moveAmount)

          copy.translateBy(x: 0, y: yOffset)
          copy.draw(glyph, options: .disablesSubpixelQuantization)
        }
      }
    }
  }
}
