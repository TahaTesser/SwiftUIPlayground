//
//  ViewModifierProtocolSample.swift
//  SwiftUIPlayground
//
//  Created by Taha Tesser on 10/14/24.
//

import SwiftUI

struct ViewModifierProtocolSample: View {
  @State var text: String = "Hello, World!"

  var body: some View {
    TextField(
      "",
      text: $text,
      prompt: Text("Placeholder")
    )
    .clearButton(
      text: $text,
      onClearHandler: {
        print("Text wad cleared!")
      }
    )
    //        .modifier(ClearTextButtonViewModifier(text: $text, onClearHandler: {
    //            print("Text wad cleared!")
    //        }))
    .padding()
  }
}

#Preview {
  ViewModifierProtocolSample()
}

extension View {
  func clearButton(
    text: Binding<String>,
    onClearHandler: (() -> Void)?
  ) -> some View {
    modifier(ClearTextButtonViewModifier(text: text, onClearHandler: onClearHandler))
  }
}

private struct ClearTextButtonViewModifier: ViewModifier {
  @Binding var text: String

  let onClearHandler: (() -> Void)?

  func body(content: Content) -> some View {
    ZStack {
      content

      HStack {
        Spacer()

        Button {
          text.removeAll()

          onClearHandler?()
        } label: {
          Image(systemName: "xmark.circle.fill")
            .foregroundStyle(.placeholder)
            .padding(.trailing, 10)
        }
        .buttonStyle(.plain)
      }
      .opacity(text.isEmpty ? 0.0 : 1.0)
    }
  }
}
