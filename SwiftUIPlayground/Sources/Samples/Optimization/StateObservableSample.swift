//
//  StateObservableSample.swift
//  SwiftUIPlayground
//
//  Created by Taha Tesser on 20.05.2026.
//

import SwiftUI

private struct ToggleModelIdentity: Identifiable, Hashable {
    let id: Int
    let title: String
    
    static let samples = [
        ToggleModelIdentity(id: 1, title: "First"),
        ToggleModelIdentity(id: 2, title: "Second"),
        ToggleModelIdentity(id: 3, title: "Third")
    ]
}

@Observable
private final class ToggleProvider {
    let id: ToggleModelIdentity.ID
    let createdAt = Date()
    var toggleOne = false
    var toggleTwo = true
    
    init(id: ToggleModelIdentity.ID) {
        self.id = id
        toggleOne = id.isMultiple(of: 2)
        toggleTwo = !toggleOne
    }
}

private struct ToggleList: View {
    let modelID: ToggleModelIdentity.ID
    
    @State private var toggleProvider: ToggleProvider?
    
    var body: some View {
        List {
            if let toggleProvider {
                Section("Model") {
                    Text("Model ID: \(toggleProvider.id)")
                    Text("Created \(toggleProvider.createdAt.formatted(date: .omitted, time: .standard))")
                        .foregroundStyle(.secondary)
                }
                
                Section("Values") {
                    Text("Toggle One: \(toggleProvider.toggleOne ? "On" : "Off")")
                    Button("Toggle One") {
                        toggleProvider.toggleOne.toggle()
                    }
                    
                    Text("Toggle Two: \(toggleProvider.toggleTwo ? "On" : "Off")")
                    Button("Toggle Two") {
                        toggleProvider.toggleTwo.toggle()
                    }
                }
            } else {
                ProgressView()
            }
        }
        .task(id: modelID) {
            if toggleProvider?.id != modelID {
                print("toggleProvider is created")
                toggleProvider = ToggleProvider(id: modelID)
            }
        }
        
    }
}

struct StateObservableSample: View {
    @State private var selectedModelID = ToggleModelIdentity.samples[0].id
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                Picker("Model", selection: $selectedModelID) {
                    ForEach(ToggleModelIdentity.samples) { model in
                        Text(model.title).tag(model.id)
                    }
                }
                .pickerStyle(.segmented)
                .padding()
                
                ToggleList(modelID: selectedModelID)
            }
            .navigationTitle("@State Observable")
        }
    }
}

#Preview {
    StateObservableSample()
}
