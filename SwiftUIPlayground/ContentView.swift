//
//  ContentView.swift
//  SwiftUIPlayground
//
//  Created by Taha Tesser on 05.09.2024.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationStack {
      SamplesList(title: "Swift Playground", samples: SampleCatalog.rootItems)
    }
  }
}

#Preview {
  ContentView()
}

struct Marvel: Identifiable {
  var type: String
  var count: Double
  var id = UUID()
}
