//
//  SymbolImageShadowSample.swift
//  SwiftUIPlayground
//
//  Created by Taha Tesser on 24.12.2025.
//

import SwiftUI

struct SymbolImageShadowSample: View {
  var body: some View {
    Image(systemName: "cloud.rain")
      .resizable()
      .frame(width: 100, height: 100)
      .symbolVariant(.circle)
      .foregroundStyle(
        .blue
          .shadow(.inner(radius: 2))
      )
  }
}

#Preview {
  SymbolImageShadowSample()
}
