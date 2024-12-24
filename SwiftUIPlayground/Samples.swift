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
            // https://developer.apple.com/documentation/swiftui/view/safeareainset(edge:alignment:spacing:content:)-6gwby
            "safeAreaInset": AnyView(SafeAreaInsetSample()),
            // https://developer.apple.com/documentation/swiftui/view/alignmentguide(_:computevalue:)-6y3u2
            "alignmentGuide": AnyView(AlignmentGuideSample()),
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
            // https://developer.apple.com/documentation/swiftui/view/scrollcontentbackground(_:)
            "scrollContentBackground": AnyView(ScrollContentBackgroundSample()),
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
    "SF Symbols": AnyView(SamplesList(
        title: "SF Symbols", samples:
        [
            "Circle Avatar": AnyView(CircleAvatarSample()),
        ]
    )),
    "Controls and Indicators": AnyView(SamplesList(
        title: "Controls and Indicators", samples:
        [
            "Stepper": AnyView(StepperSample()),
            "ColorPicker": AnyView(ColorPickerSample()),
            "ProgressView": AnyView(ProgressViewSample()),
        ]
    )),
    "Layout Fundamentals": AnyView(SamplesList(
        title: "Layout Fundamentals", samples:
        [
            // https://developer.apple.com/documentation/swiftui/viewthatfits
            "ViewThatFits": AnyView(ViewThatFitsSample()),
        ]
    )),
    "Animations": AnyView(SamplesList(
        title: "Animations", samples:
        [
            // https://developer.apple.com/documentation/swiftui/view/matchedgeometryeffect(id:in:properties:anchor:issource:)
            "matchedgeometryeffect": AnyView(MatchedGeometryEffectSample()),
        ]
    )),
    "Custom Layout": AnyView(SamplesList(
        title: "Custom Layout", samples:
        [
            // https://developer.apple.com/documentation/swiftui/layout
            "Layout Protocol": AnyView(LayoutProtocolSample()),
        ]
    )),
    "View Fundamentals": AnyView(SamplesList(
        title: "View Fundamental", samples:
        [
            // https://developer.apple.com/documentation/swiftui/viewmodifier
            "ViewModifier Protocol": AnyView(ViewModifierProtocolSample()),
        ]
    )),
    "Shapes": AnyView(SamplesList(
        title: "Shapes", samples:
        [
            "Progress Indicator Arc": AnyView(ProgressIndicatorArcSample()),
            "Stroke Border": AnyView(StrokeBorderSample()),
        ]
    )),
    "View": AnyView(SamplesList(
        title: "View", samples:
        [
            "Color Brightess": AnyView(ColorBrightnessSample()),
        ]
    )),
    "NumbersDataBasicValues": AnyView(SamplesList(
        title: "NumbersDataBasicValues", samples:
        [
            "NumberFormatter": AnyView(NumberFormatterSample()),
        ]
    ))
]
