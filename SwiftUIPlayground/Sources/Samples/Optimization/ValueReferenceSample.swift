//
//  ValueReferenceSample.swift
//  SwiftUIPlayground
//
//  Created by Taha Tesser on 19.05.2026.
//

import SwiftUI

struct Animal: Identifiable, Equatable {
    var id: Int
    var name: String
    var scientificName: String
}

@Observable class AnimalListSettingsProvider {
    var sortByConservationStatus =  false
    var showScientificNames = true
}

struct SettingsView: View {
    @Bindable var settings: AnimalListSettingsProvider

    var body: some View {
        NavigationStack {
            Form {

            }
        }
    }
}

struct AnimalRow: View {
    let animal: Animal
    let settings: AnimalListSettingsProvider

    var body: some View {
        VStack(alignment: .leading) {
            Text(animal.name)

            if settings.showScientificNames {
                Text(animal.scientificName)
            }
        }
    }
}

struct AnimalModal: View {
    let animals: [Animal] = [
        Animal(id: 1, name: "Whale", scientificName: "Balaenoptera musculus"),
        Animal(id: 2, name: "Crab", scientificName: "Cancer pagurus"),
        Animal(id: 3, name: "T-Rex", scientificName: "Tyrannosaurus rex")
    ]

    @State private var showSettings = false

    @State private var settings = AnimalListSettingsProvider()

    var body: some View {
        NavigationStack {
            List {
                ForEach(animals) { animal in
                    AnimalRow(animal: animal, settings: settings)
                }
            }

            .toolbar {
                ToolbarItem(placement: .automatic) {
                    Button {
                        showSettings.toggle()
                    } label: {
                        Image(systemName: "gear")
                    }
                }
            }
        }
        .sheet(isPresented: $showSettings) {
            SettingsView(settings: settings)
        }
    }
}

#Preview {
    NavigationStack {
        AnimalModal()
    }
}
