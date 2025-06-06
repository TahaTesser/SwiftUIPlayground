//
//  InnerShadowSample.swift
//  SwiftUIPlayground
//
//  Created by Taha Tesser on 06.06.2025.
//

import SwiftUI

struct InnerShadowSample: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 40, style: .continuous)
         
            .foregroundStyle(  LinearGradient(
                gradient: Gradient(colors: [
                    Color(red: 10/255, green: 9/255, blue: 9/255),
                    Color(red: 9/255, green: 16/255, blue: 31/255)
                ]),
                startPoint: .leading,
                endPoint: .trailing
            )
                
                .shadow(.inner(color: .blue, radius: 3, x: 1, y: 1)))
        .frame(width: 200, height: 200)
     
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    InnerShadowSample()
}
