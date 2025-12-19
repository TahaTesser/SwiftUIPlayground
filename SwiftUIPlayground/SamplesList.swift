//
//  SamplesList.swift
//  playground
//
//  Created by Taha Tesser on 07.08.2024.
//

import SwiftUI

struct SamplesList: View {
    let title: String
    let samples: [SampleItem]

    init(title: String, samples: [SampleItem]) {
        self.title = title
        self.samples = samples
    }

    let columns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16),
    ]

    private var sortedSamples: [SampleItem] {
        samples.sorted { left, right in
            left.title.localizedStandardCompare(right.title) == .orderedAscending
        }
    }

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(sortedSamples) { sample in
                    NavigationLink(destination: sample.destination) {
                        VStack {
                            Text(sample.title)
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
            SampleItem("Sample 1") { Text("This is Sample 1") },
            SampleItem("Sample 2") { Text("This is Sample 2") },
            SampleItem("Sample 3") { Text("This is Sample 3") },
            SampleItem("Sample 4") { Text("This is Sample 4") },
        ])
    }
}
