//
//  ContentView.swift
//  playground
//
//  Created by Taha Tesser on 04.08.2024.
//

import SwiftUI

struct ContentView: View {
  let samples: [String: AnyView] = [
    "Rotate Gesture": AnyView(RotateGestureSample()),
    "MapStyle": AnyView(MapStyleSample()),
    "GroupBox": AnyView(GroupBoxSample()),
    "JunoUI Slider": AnyView(JunoUISliderSample()),
    "Button Border Shape": AnyView(ButtonBorderShapeSample()),
    "Rule View": AnyView(RuleViewSample()),
  ]
    
  let columns = [
    GridItem(.flexible(), spacing: 16),
    GridItem(.flexible(), spacing: 16)
  ]
    
  var body: some View {
    NavigationView {
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
      .navigationTitle("Swift Playground")
    }
  }
}

#Preview {
  ContentView()
}
