//
//  MapStyle.swift
//  playground
//
//  Created by Taha Tesser on 04.08.2024.
//

import SwiftUI
import MapKit

struct MapStyleSample: View {
  let location = CLLocationCoordinate2D(
    latitude: 41.8902, longitude: 12.4922
  )
    
  var body: some View {
    Map {
      Marker("Colosseum", coordinate: location)
    }
    .mapStyle(.standard(elevation: .realistic))
  }
}

#Preview {
  MapStyleSample()
}
