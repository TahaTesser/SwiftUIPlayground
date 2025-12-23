//
//  DisclosureGroupSample.swift
//  playground
//
//  Created by Taha Tesser on 07.08.2024.
//

import SwiftUI

struct DisclosureGroupSample: View {
  struct Device {
    let title: String
    let imageName: String
  }

  struct Weather {
    let title: String
    let imageName: String
  }

  let devices: [Device] = [
    .init(title: "iPhone", imageName: "iphone"),
    .init(title: "MacBook", imageName: "macbook"),
    .init(title: "Mac mini", imageName: "macmini.fill"),
  ]

  let weather: [Weather] = [
    .init(title: "Cloudy", imageName: "cloud.fill"),
    .init(title: "Sunny", imageName: "sun.max.fill"),
    .init(title: "Rainy", imageName: "cloud.rain"),
  ]

  @State private var isDevicesExpanded: Bool = true
  @State private var isWeatherExpanded: Bool = true

  var body: some View {
    List {
      DisclosureGroup("Devices", isExpanded: $isDevicesExpanded) {
        ForEach(devices, id: \.title) { device in
          Label(device.title, systemImage: device.imageName)
        }
      }
      DisclosureGroup("Weather", isExpanded: $isWeatherExpanded) {
        ForEach(weather, id: \.title) { item in
          Label(item.title, systemImage: item.imageName)
        }
      }
    }
  }
}

#Preview {
  DisclosureGroupSample()
}
