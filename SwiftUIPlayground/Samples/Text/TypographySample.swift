//
//  TypographySample.swift
//  playground
//
//  Created by Taha Tesser on 04.09.2024.
//

import SwiftUI

struct TypographySample: View {
  var body: some View {
    VStack {
      Text("Hello, SwiftUI!")
        .font(.largeTitle)
      Text("Hello, SwiftUI!")
        .font(.title)
      Text("Hello, SwiftUI!")
        .font(.title2)
      Text("Hello, SwiftUI!")
        .font(.title3)
      Text("Hello, SwiftUI!")
        .font(.headline)
      Text("Hello, SwiftUI!")
        .font(.subheadline)
      Text("Hello, SwiftUI!")
        .font(.body)
      Text("Hello, SwiftUI!")
        .font(.callout)
      Text("Hello, SwiftUI!")
        .font(.footnote)
      Text("Hello, SwiftUI!")
        .font(.caption)
      Text("Hello, SwiftUI!")
        .font(.caption2)
    }
    .padding()
  }
}

#Preview {
  TypographySample()
}
