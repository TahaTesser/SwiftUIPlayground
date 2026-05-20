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



struct AnimalModal: View {
    let animals: [Animal]
    
    @State private var selectedAnimal = Animals()
    
    @State private var showSettings = false
    
    @State private var settings = AnimalListSettingsProvider()
    
    
    struct Animals {
        var animalIDs: Set<Animal.ID> = [
            Animal(id: 1, name: "Whale").id,
            Animal(id: 1, name: "Crab").id
        ]
        var notes = ""
    }
    
    var body: some View {
        NavigationStack {
            List(animals) { animal in
                Text(animal.name)
            }
            .safeAreaBar(edge: .bottom) {
                TextField("Field notes", text: $selectedAnimal.notes)
                    .padding()
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
        AnimalModal(animals: [Animal(id: 1, name: "Whale"), Animal(id: 2, name: "Crab"), Animal(id: 3, name: "T-Rex")])
    }
}
