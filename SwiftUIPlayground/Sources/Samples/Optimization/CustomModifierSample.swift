//
//  CustomModifierSample.swift
//  SwiftUIPlayground
//
//  Created by Taha Tesser on 19.05.2026.
//

import SwiftUI

struct CardFrame: ViewModifier {
    @Environment(\.horizontalSizeClass) private var sizeClass
    @Environment(\.dynamicTypeSize) private var typeSize

    private var cardSpan: Int {
        if sizeClass == .regular && !typeSize.isAccessibilitySize {
            return 2
        }

        return 4
    }

    func body(content: Content) -> some View {
        content
            .containerRelativeFrame(.horizontal, count: 5, span: cardSpan, spacing: 0)
    }
}

extension View {
    func cardFrame() -> some View {
        modifier(CardFrame())
    }

    func highlighted(_ isHighlighted: Bool = true) -> some View {
        self
            .bold(isHighlighted)
            .underline(isHighlighted)
            .foregroundStyle(isHighlighted ? .green : .primary)
    }
}

struct CustomModifierSample: View {
   var body: some View {
       ScrollView(.horizontal) {
           HStack(spacing: 16) {
               VStack {
                   Button {
                       print("Button pressed")
                   } label: {
                       Text("Tap me")
                           .frame(maxWidth: .infinity, minHeight: 120)
                           .background(.blue.opacity(0.16), in: RoundedRectangle(cornerRadius: 16))
                   }
                   .cardFrame()

                   Text("Some text")
                       .highlighted()
               }
           }
       }
    }
}

#Preview {
    CustomModifierSample()
}
