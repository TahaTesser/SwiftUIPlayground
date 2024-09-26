//
//  SafeAreaInsetSample.swift
//  SwiftUIPlayground
//
//  Created by Taha Tesser on 27.09.2024.
//

import SwiftUI

struct SafeAreaInsetSample: View {
    var body: some View {
        NavigationStack {
            List {
                Text("One")
                Text("Two")
                Text("Three")
            }
            .navigationTitle("Safe Area Inset")
            .navigationBarTitleDisplayMode(.inline)
            .safeAreaInset(edge: .top, spacing: 0) {
                HStack {
                    Spacer() // Pushes the Menu to the trailing end

                    Menu {
                        Button("Set In Point", action: {})
                        Button("Set Out Point", action: {})
                    } label: {
                        Label("Editing", systemImage: "ellipsis.circle")
                            .font(.headline)
                            .foregroundColor(.blue)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    SafeAreaInsetSample()
}
