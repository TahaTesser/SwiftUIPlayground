//
//  AsyncImageSample.swift
//  playground
//
//  Created by Taha Tesser on 06.08.2024.
//

import SwiftUI

struct AsyncImageSample: View {
  let imageUrl = "https://github.com/TahaTesser/swift_playground/blob/main/playground/Preview%20Content/Preview%20Assets.xcassets/park.imageset/park.jpeg?raw=true"
    
  var body: some View {
    AsyncImage(url: URL(string: imageUrl)) { image in
      image
        .resizable()
        .scaledToFit()
    } placeholder: {
      ProgressView()
        .progressViewStyle(CircularProgressViewStyle(tint: .green))
        .scaleEffect(2.0, anchor: .center)
    }
    .clipShape(.rect(cornerRadius: 4))
    .padding()
  }
}

#Preview {
  AsyncImageSample()
}
