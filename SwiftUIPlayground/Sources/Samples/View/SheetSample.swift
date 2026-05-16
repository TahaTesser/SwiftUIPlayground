//
//  SheetSample.swift
//  SwiftUIPlayground
//
//  Created by Taha Tesser on 24.12.2025.
//

import SwiftUI

struct SheetSample: View {
  @State private var isPresented: Bool = false
  @State private var query = ""

  var body: some View {
    Button("Display bottom sheet") {
      isPresented = true
    }
    .sheet(isPresented: $isPresented) {
      NavigationStack {
        Text("Your query: \(query)")
          .searchable(text: $query)
          .navigationTitle("Search")
      }
      .presentationDetents([.medium])
    }
  }
}

#Preview {
  SheetSample()
}
