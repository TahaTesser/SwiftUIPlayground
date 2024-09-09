//
//  CircleCharacterSample.swift
//  SwiftUIPlayground
//
//  Created by Taha Tesser on 9/9/24.
//

import SwiftUI

struct CircleInitialAvatarSample: View {
    @State private var text: String = "a"

    var body: some View {
        VStack(spacing: 20) {
            if (text.isEmpty) {
                Image(systemName: "exclamationmark.circle.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
            } else {
                Image(systemName: "\(String(describing: text)).circle.fill")
                    .resizable()
                    .frame(width: 100, height: 100)

            }
            TextField(
                "Enter a character",
                text: $text
            )
            .textInputAutocapitalization(.never)
            .disableAutocorrection(true)
            .textFieldStyle(.roundedBorder)
            .frame(width: 28)
            .onChange(of: text) { newValue in
                if newValue.count > 1 {
                    text = String(newValue.prefix(1))
                }
                let filtered = text.lowercased().filter { $0.isLetter && $0.isASCII }
                if filtered != text {
                    text = filtered.isEmpty ? "" : String(filtered.prefix(1))
                }
                if !text.isEmpty && !("a"..."z").contains(text.lowercased()) {
                    text = ""
                }
            }
            if text.isEmpty {
                Text("Please enter a-z")
                    .foregroundColor(.red)
                    .font(.caption)
            }
        }
        .padding()
    }
}

#Preview {
    CircleInitialAvatarSample()
}
