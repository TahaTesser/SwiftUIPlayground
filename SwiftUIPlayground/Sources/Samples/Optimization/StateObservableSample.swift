//
//  StateObservableSample.swift
//  SwiftUIPlayground
//
//  Created by Taha Tesser on 20.05.2026.
//

import SwiftUI

@Observable
private final class ObservableCounter {
    var count = 0
}

struct StateObservableSample: View {
    @State private var counter = ObservableCounter()
    
    var body: some View {
        VStack(spacing: 16) {
            Text(counter.count, format: .number)
                .font(.largeTitle)
            
            Button("Increment") {
                counter.count += 1
            }
            .buttonStyle(.borderedProminent)
        }
        .navigationTitle("@State Observable")
    }
}

#Preview {
    StateObservableSample()
}
