//
//  TabViewSample.swift
//  playground
//
//  Created by Taha Tesser on 06.08.2024.
//

import SwiftUI

struct TabViewSample: View {
  var body: some View {
    TabView {
      Tab("Feed", systemImage: "rectangle.stack.fill") {
        Text("Feed Page")
          .font(.headline)
      }
      Tab("Search", systemImage: "magnifyingglass") {
        Text("Search Page")
          .font(.headline)
      }
      Tab("Notifications", systemImage: "bell.fill") {
        Text("Notifications Page")
          .font(.headline)
      }
      Tab("You", systemImage: "person.crop.circle") {
        Text("You Page")
          .font(.headline)
      }
    }
  }
}

#Preview {
  TabViewSample()
}
