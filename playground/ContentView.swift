//
//  ContentView.swift
//  playground
//
//  Created by Taha Tesser on 04.08.2024.
//

import SwiftUI

struct ContentView: View {
  let samplesType: [String: AnyView] = [
    "Buttons": AnyView(SamplesList(
      title: "Buttons", samples:
        [
          "Button Border Shape": AnyView(ButtonBorderShapeSample()),
        ]
    )),
    "Map": AnyView(SamplesList(
      title: "Map", samples:
        [
          "MapStyle": AnyView(MapStyleSample()),
        ]
    )),
    "Gesture": AnyView(SamplesList(
      title: "Gesture", samples:
        [
          "Rotate Gesture": AnyView(RotateGestureSample()),
        ]
    )),
    "GroupBox": AnyView(SamplesList(
      title: "GroupBox", samples:
        [
          "GroupBox": AnyView(GroupBoxSample()),
        ]
    )),
    "Third party": AnyView(SamplesList(
      title: "Third party", samples:
        [
          "JunoUI Slider": AnyView(JunoUISliderSample()),
        ]
    )),
    "Layout Adjustments": AnyView(SamplesList(
      title: "Layout Adjustments", samples:
        [
          "Container Relative Frame": AnyView(ContainerRelativeFrameSample()),
        ]
    )),
    "Drawing and Graphics": AnyView(SamplesList(
      title: "Drawing and Graphics", samples:
        [
          "Compsiting Group": AnyView(CompsitingGroupSample()),
        ]
    )),
    "Tables": AnyView(SamplesList(
      title: "Tables", samples:
        [
          "Table": AnyView(TableSample()),
        ]
    )),
    "Text": AnyView(SamplesList(
      title: "Text", samples:
        [
          "Text Renderer": AnyView(TextRendererSample()),
        ]
    )),
    "Navigation": AnyView(SamplesList(
      title: "Navigation", samples:
        [
          "Tab View": AnyView(TabViewSample()),
          "Tab View Style": AnyView(TabViewStyleSample()),
        ]
    )),
    "Images": AnyView(SamplesList(
      title: "Navigation", samples:
        [
          "Async Image": AnyView(AsyncImageSample()),
          "Variable Value": AnyView(VariableValueSample()),
        ]
    )),
    "View Groupings": AnyView(SamplesList(
      title: "View Groupings", samples:
        [
          "Form": AnyView(FormSample()),
        ]
    )),
    "Lists": AnyView(SamplesList(
      title: "Lists", samples:
        [
          "Disclosure Group": AnyView(DisclosureGroupSample()),
        ]
    )),
  ]
    
  var body: some View {
    NavigationStack {
      SamplesList(title: "Swift Playground", samples: samplesType)
    }
  }
}

#Preview {
  ContentView()
}
