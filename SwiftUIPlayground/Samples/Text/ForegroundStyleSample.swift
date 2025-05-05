//
//  ForegroundStyleSample.swift
//  SwiftUIPlayground
//
//  Created by Taha Tesser on 04.05.2025.
//

import SwiftUI

struct ForegroundStyleSample: View {
    var body: some View {
        VStack(spacing: 16) {
            VStack {
                Image(systemName: "globe")
                Text("Hello, World!")
            }
            .foregroundStyle(.cyan)

            VStack {
                Image(systemName: "globe")
                Text("Hello, World!")
            }
            .foregroundStyle(
                LinearGradient(
                    colors: [.mint, .blue], startPoint: .leading, endPoint: .trailing
                )
            )

            VStack {
                Image(systemName: "globe")
                Text("Hello, world!")
                    .foregroundStyle(.secondary)
            }
            .foregroundStyle(.green)

            Text("Hello, \(Text("world").foregroundStyle(.mint))!")

            MessageView()

            VStack {
                Text("Welcome!")
                Button("Log in") {
                    // perform login
                }
            }
            .tint(.teal)

            Text("Visit our [website](https://example.com).")
                .tint(.cyan)
        }
    }
}

struct MessageView: View {
    var attrString: AttributedString {
        var attrString = AttributedString("Don't miss the event today!")

        if let range = attrString.range(of: "today") {
            attrString[range].foregroundColor = .yellow
        }

        return attrString
    }

    var body: some View {
        Text(attrString)
    }
}

#Preview {
    ForegroundStyleSample()
}
