//
//  NumberFormatterSample.swift
//  SwiftUIPlayground
//
//  Created by Taha Tesser on 24.12.2024.
//

import SwiftUI

struct NumberFormatterSample: View {
    var body: some View {
        Text(formatNumberAsWords(1234))
            .font(.system(size: 80, weight: .bold))
            .padding()
    }
    
    private func formatNumberAsWords(_ number: Int) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .spellOut
        return numberFormatter.string(from: NSNumber(value: number)) ?? "N/A"
    }
}

#Preview {
    NumberFormatterSample()
        .preferredColorScheme(.dark)
}
