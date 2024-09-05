//
//  Samples.swift
//  playground
//
//  Created by Taha Tesser on 08.08.2024.
//

import SwiftUI

public let samples: [String: AnyView] = [
    "Buttons": AnyView(SamplesList(
        title: "Buttons", samples:
        [
            // https://developer.apple.com/documentation/swiftui/button
            "Button Border Shape": AnyView(ButtonBorderShapeSample()),
        ]
    )),
    "Map": AnyView(SamplesList(
        title: "Map", samples:
        [
            // https://developer.apple.com/documentation/mapkit/map
            "MapStyle": AnyView(MapStyleSample()),
        ]
    )),
    "Gesture": AnyView(SamplesList(
        title: "Gesture", samples:
        [
            // https://developer.apple.com/documentation/swiftui/rotategesture
            "Rotate Gesture": AnyView(RotateGestureSample()),
        ]
    )),
    "Third party": AnyView(SamplesList(
        title: "Third party", samples:
        [
            // https://github.com/christianselig/JunoSlider
            "JunoUI Slider": AnyView(JunoUISliderSample()),
        ]
    )),
    "Layout Adjustments": AnyView(SamplesList(
        title: "Layout Adjustments", samples:
        [
            // https://developer.apple.com/documentation/swiftui/view/containerrelativeframe(_:alignment:)
            "Container Relative Frame": AnyView(ContainerRelativeFrameSample()),
        ]
    )),
    "Drawing and Graphics": AnyView(SamplesList(
        title: "Drawing and Graphics", samples:
        [
            // https://developer.apple.com/documentation/swiftui/view/compositinggroup()
            "Compsiting Group": AnyView(CompsitingGroupSample()),
            // https://developer.apple.com/documentation/swiftui/view/mask(alignment:_:)
            "Masking": AnyView(MaskingSample()),
        ]
    )),
    "Tables": AnyView(SamplesList(
        title: "Tables", samples:
        [
            // https://developer.apple.com/documentation/swiftui/table
            "Table": AnyView(TableSample()),
        ]
    )),
    "Text": AnyView(SamplesList(
        title: "Text", samples:
        [
            // https://developer.apple.com/documentation/swiftui/textrenderer
            "Text Renderer": AnyView(TextRendererSample()),
            // https://developer.apple.com/documentation/swiftui/text/datestyle
            "Relative DateStyle": AnyView(RelativeDateStyleSample()),
            // https://developer.apple.com/documentation/swiftui/font
            "Typography": AnyView(TypographySample()),
        ]
    )),
    "Navigation": AnyView(SamplesList(
        title: "Navigation", samples:
        [
            // https://developer.apple.com/documentation/swiftui/tabview
            "Tab View": AnyView(TabViewSample()),
            // https://developer.apple.com/documentation/swiftui/tabviewstyle
            "Tab View Style": AnyView(TabViewStyleSample()),
        ]
    )),
    "Images": AnyView(SamplesList(
        title: "Images", samples:
        [
            // https://developer.apple.com/documentation/swiftui/asyncimage
            "Async Image": AnyView(AsyncImageSample()),
            // https://developer.apple.com/documentation/swiftui/image/init(_:variablevalue:bundle:)
            "Variable Value": AnyView(VariableValueSample()),
        ]
    )),
    "View Groupings": AnyView(SamplesList(
        title: "View Groupings", samples:
        [
            // https://developer.apple.com/documentation/swiftui/form
            "Form": AnyView(FormSample()),
            // https://developer.apple.com/documentation/swiftui/groupbox
            "GroupBox": AnyView(GroupBoxSample()),
        ]
    )),
    "Lists": AnyView(SamplesList(
        title: "Lists", samples:
        [
            // https://developer.apple.com/documentation/swiftui/disclosuregroup
            "Disclosure Group": AnyView(DisclosureGroupSample()),
            // https://developer.apple.com/documentation/swiftui/listsectionspacing
            "List Section Spacing": AnyView(ListSectionSpacingSample()),
        ]
    )),
    "Slider": AnyView(SamplesList(
        title: "Slider", samples:
        [
            // https://developer.apple.com/documentation/swiftui/slider
            "Slider": AnyView(SliderSample()),
        ]
    )),
    "Charts": AnyView(SamplesList(
        title: "Charts", samples:
        [
            // https://developer.apple.com/documentation/charts/linemark
            "LineChart": AnyView(LineChartSample()),
        ]
    )),
]
