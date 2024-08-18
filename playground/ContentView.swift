//
//  ContentView.swift
//  playground
//
//  Created by Taha Tesser on 04.08.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            SamplesList(title: "Swift Playground", samples: samples)
        }
    }
}

#Preview {
    ContentView()
}
