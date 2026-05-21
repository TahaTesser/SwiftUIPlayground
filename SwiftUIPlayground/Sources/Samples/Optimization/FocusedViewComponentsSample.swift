//
//  FocusedViewComponents.swift
//  SwiftUIPlayground
//
//  Created by Taha Tesser on 17.05.2026.
//

import SwiftUI

struct Airport: Identifiable, Equatable {
    enum Code: String {
        case HEL
        case TLL
        case BER
        case AMS
        case CDG
    }

    let id: Code
    let code: Code
}

class AirportProvider {
    static func airportName(for code: Airport.Code) -> String? {
        switch code {
        case .HEL: return "Helsinki"
        case .TLL: return "Tallinn"
        case .BER: return "Berlin"
        case .AMS: return "Amsterdam"
        case .CDG: return "Paris"
        }
    }
}

extension View {
    func sectionHeaderStyle() -> some View {
        self
            .font(.headline)
            .textCase(.uppercase)
            .foregroundStyle(.secondary)
            .accessibilityAddTraits(.isHeader)
            .accessibilityHeading(.h2)
    }
}

struct AirportSection: View {
    let airportCode: Airport.Code

    var airportName: String? {
        AirportProvider.airportName(for: airportCode)
    }

    var body: some View {
        if let airportName {
            Text(airportName)
                .sectionHeaderStyle()
        }
    }
}

private struct AirportWatchlistKey: EnvironmentKey {
    static let defaultValue: Set<Airport.Code> = [.HEL, .TLL]
}

extension EnvironmentValues {
    var airportWatchlist: Set<Airport.Code> {
        get { self[AirportWatchlistKey.self] }
        set { self[AirportWatchlistKey.self] = newValue }
    }
}

struct AirportDetails: View {
    let airport: Airport

    @Environment(\.airportWatchlist)
    private var watchlist

    private var isWatchlisted: Bool {
        watchlist.contains(airport.id)
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 12) {
                    AirportSection(airportCode: airport.code)

                    if isWatchlisted {
                        Text("This airport is in your watchlist.")
                            .font(.subheadline)
                    }
                }
            }
            .navigationTitle(airport.code.rawValue)
            .toolbar {
                Button {
                    print("Toggle watchlist")
                } label: {
                    Image(systemName: isWatchlisted ? "star.fill" : "star")
                }
            }
        }

    }

}

#Preview {
    NavigationStack {
        AirportDetails(
            airport: Airport(id: .TLL, code: .TLL)
        )
    }
    .environment(\.airportWatchlist, [.HEL, .TLL])
}
