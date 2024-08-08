//
//  SamplesList.swift
//  playground
//
//  Created by Taha Tesser on 07.08.2024.
//

import SwiftUI

struct SamplesList: View {
  let title: String
  let samples: [String: AnyView]
  
  init(title: String, samples: [String: AnyView]) {
    self.title = title
    self.samples = samples
  }

  let columns = [
    GridItem(.flexible(), spacing: 16),
    GridItem(.flexible(), spacing: 16)
  ]
  
  var body: some View {
    ScrollView {
      LazyVGrid(columns: columns, spacing: 16) {
        ForEach(
          Array(samples.keys.sorted()),
          id: \.self
        ) { sampleKey in
          NavigationLink(destination: samples[sampleKey]) {
            VStack {
              Text(sampleKey)
                .font(.headline)
                .multilineTextAlignment(.center)
                .foregroundColor(.primary)
                .padding(.horizontal)
                .padding(.vertical, 10)
                .frame(height: 100)
                .frame(maxWidth: .infinity)
                .background(Color.blue.opacity(0.1))
                .cornerRadius(10)
                .overlay(
                  RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.blue, lineWidth: 1)
                )
            }
          }
          .buttonStyle(PlainButtonStyle())
        }
      }
      .padding()
    }
    .navigationTitle(title)
  }
}

#Preview {
  NavigationView {
    SamplesList(title: "Swift Playground", samples: [
      "Sample 1": AnyView(Text("This is Sample 1")),
      "Sample 2": AnyView(Text("This is Sample 2")),
      "Sample 3": AnyView(Text("This is Sample 3")),
      "Sample 4": AnyView(Text("This is Sample 4"))
    ])
  }
}
