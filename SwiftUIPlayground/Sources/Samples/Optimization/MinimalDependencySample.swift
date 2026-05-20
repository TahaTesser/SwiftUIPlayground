//
//  MinimalDependencySample.swift
//  SwiftUIPlayground
//
//  Created by Taha Tesser on 19.05.2026.
//

import SwiftUI

private struct Movie: Identifiable, Equatable {
    enum Title: String {
        case AVG = "AVG"
        case LOTR = "LOTR"
        case CON = "CON"
        
    }
    
    let id: Title
    let code: Title
}

private class MovieProvider {
    static func title(for title: Movie.Title) -> String? {
        switch title {
        case .AVG: return "Avengers"
        case .LOTR: return "Lord of the Rings"
        case .CON: return "Conjuring"
            
        }
    }
}


private struct MovieSection: View {
    let movie: Movie.Title
    
    var movieTitle: String? {
        MovieProvider.title(for:
                                movie)
    }
    
    var body: some View {
        if let movieTitle {
            Text(movieTitle)
                .sectionHeaderStyle()
        }
    }
}

struct MoviePicker: View {
    @Binding var showPicker: Bool
    
    var body: some View {
        Button("Pick a movie") {
            showPicker.toggle()
        }
        .buttonStyle(.borderedProminent)
    }
}

struct MinimalDependencySample: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                MovieSection(movie: .AVG)
                MovieSection(movie: .LOTR)
                MovieSection(movie: .CON)
                MoviePicker(showPicker: .constant(true))
            }
        }
        .navigationTitle("Movies")
    }
}



#Preview {
    NavigationStack {
        MinimalDependencySample()
    }
}
