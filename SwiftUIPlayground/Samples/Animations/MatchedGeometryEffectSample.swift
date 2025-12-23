//
//  MatchedGeometryEffectSample.swift
//  SwiftUIPlayground
//
//  Created by Taha Tesser on 07.10.2024.
//

import SwiftUI

struct MatchedGeometryEffectSample: View {
  @Namespace private var animation
  @State private var isExpanded: Bool = false

  var body: some View {
    ZStack {
      if isExpanded {
        ZStack {
          RoundedRectangle(cornerRadius: 10)
            .fill(.black)
            .clipShape(RoundedRectangle(cornerRadius: 16))
          Image(systemName: "rainbow")
            .symbolRenderingMode(.multicolor)
            .resizable()
            .scaledToFit()
            .padding()
            .matchedGeometryEffect(id: "park", in: animation)
        }
      } else {
        ZStack {
          RoundedRectangle(cornerRadius: 10)
            .fill(.black)
            .frame(height: 100)
            .clipShape(RoundedRectangle(cornerRadius: 16))
          Image(systemName: "rainbow")
            .symbolRenderingMode(.multicolor)
            .resizable()
            .scaledToFit()
            .frame(height: 80)
            .matchedGeometryEffect(id: "park", in: animation)
        }
        .padding()
      }
    }
    .onTapGesture {
      withAnimation(.spring()) {
        isExpanded.toggle()
      }
    }
    .ignoresSafeArea()
  }
}

#Preview {
  MatchedGeometryEffectSample()
}
