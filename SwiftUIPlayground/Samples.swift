//
//  Samples.swift
//  playground
//
//  Created by Taha Tesser on 08.08.2024.
//

import SwiftUI

public struct SampleItem: Identifiable {
  public let title: String
  public let destination: AnyView

  public var id: String { title }

  public init<V: View>(_ title: String, @ViewBuilder destination: () -> V) {
    self.title = title
    self.destination = AnyView(destination())
  }
}

public struct SampleSection: Identifiable {
  public let title: String
  public let samples: [SampleItem]

  public var id: String { title }

  public init(title: String, samples: [SampleItem]) {
    self.title = title
    self.samples = samples
  }
}

public enum SampleCatalog {
  public static let sections: [SampleSection] = [
    SampleSection(
      title: "Buttons",
      samples: [
        // https://developer.apple.com/documentation/swiftui/button
        SampleItem("Button Border Shape") { ButtonBorderShapeSample() }
      ]),
    SampleSection(
      title: "Map",
      samples: [
        // https://developer.apple.com/documentation/mapkit/map
        SampleItem("MapStyle") { MapStyleSample() }
      ]),
    SampleSection(
      title: "Gesture",
      samples: [
        // https://developer.apple.com/documentation/swiftui/rotategesture
        SampleItem("Rotate Gesture") { RotateGestureSample() }
      ]),
    SampleSection(
      title: "Third party",
      samples: [
        // https://github.com/christianselig/JunoSlider
        SampleItem("JunoUI Slider") { JunoUISliderSample() }
      ]),
    SampleSection(
      title: "Layout Adjustments",
      samples: [
        // https://developer.apple.com/documentation/swiftui/view/containerrelativeframe(_:alignment:)
        SampleItem("Container Relative Frame") { ContainerRelativeFrameSample() },
        // https://developer.apple.com/documentation/swiftui/view/safeareainset(edge:alignment:spacing:content:)-6gwby
        SampleItem("safeAreaInset") { SafeAreaInsetSample() },
        // https://developer.apple.com/documentation/swiftui/view/alignmentguide(_:computevalue:)-6y3u2
        SampleItem("alignmentGuide") { AlignmentGuideSample() },
      ]),
    SampleSection(
      title: "Drawing and Graphics",
      samples: [
        // https://developer.apple.com/documentation/swiftui/view/compositinggroup()
        SampleItem("Compsiting Group") { CompsitingGroupSample() },
        // https://developer.apple.com/documentation/swiftui/view/mask(alignment:_:)
        SampleItem("Masking") { MaskingSample() },
      ]),
    SampleSection(
      title: "Tables",
      samples: [
        // https://developer.apple.com/documentation/swiftui/table
        SampleItem("Table") { TableSample() }
      ]),
    SampleSection(
      title: "Text",
      samples: [
        // https://developer.apple.com/documentation/swiftui/textrenderer
        SampleItem("Text Renderer") { TextRendererSample() },
        // https://developer.apple.com/documentation/swiftui/text/datestyle
        SampleItem("Relative DateStyle") { RelativeDateStyleSample() },
        // https://developer.apple.com/documentation/swiftui/font
        SampleItem("Typography") { TypographySample() },
        // https://developer.apple.com/documentation/swiftui/view/foregroundstyle(_:)
        SampleItem("ForegroundStyle") { ForegroundStyleSample() },
      ]),
    SampleSection(
      title: "Navigation",
      samples: [
        // https://developer.apple.com/documentation/swiftui/tabview
        SampleItem("Tab View") { TabViewSample() },
        // https://developer.apple.com/documentation/swiftui/tabviewstyle
        SampleItem("Tab View Style") { TabViewStyleSample() },
      ]),
    SampleSection(
      title: "Images",
      samples: [
        // https://developer.apple.com/documentation/swiftui/asyncimage
        SampleItem("Async Image") { AsyncImageSample() },
        // https://developer.apple.com/documentation/swiftui/image/init(_:variablevalue:bundle:)
        SampleItem("Variable Value") { VariableValueSample() },
      ]),
    SampleSection(
      title: "View Groupings",
      samples: [
        // https://developer.apple.com/documentation/swiftui/form
        SampleItem("Form") { FormSample() },
        // https://developer.apple.com/documentation/swiftui/groupbox
        SampleItem("GroupBox") { GroupBoxSample() },
        // https://developer.apple.com/documentation/swiftui/view/scrollcontentbackground(_:)
        SampleItem("scrollContentBackground") { ScrollContentBackgroundSample() },
      ]),
    SampleSection(
      title: "Lists",
      samples: [
        // https://developer.apple.com/documentation/swiftui/disclosuregroup
        SampleItem("Disclosure Group") { DisclosureGroupSample() },
        // https://developer.apple.com/documentation/swiftui/listsectionspacing
        SampleItem("List Section Spacing") { ListSectionSpacingSample() },
      ]),
    SampleSection(
      title: "Slider",
      samples: [
        // https://developer.apple.com/documentation/swiftui/slider
        SampleItem("Slider") { SliderSample() }
      ]),
    SampleSection(
      title: "Charts",
      samples: [
        // https://developer.apple.com/documentation/charts/linemark
        SampleItem("LineChart") { LineChartSample() }
      ]),
    SampleSection(
      title: "SF Symbols",
      samples: [
        SampleItem("Circle Avatar") { CircleAvatarSample() }
      ]),
    SampleSection(
      title: "Controls and Indicators",
      samples: [
        SampleItem("Stepper") { StepperSample() },
        SampleItem("ColorPicker") { ColorPickerSample() },
        SampleItem("ProgressView") { ProgressViewSample() },
      ]),
    SampleSection(
      title: "Layout Fundamentals",
      samples: [
        // https://developer.apple.com/documentation/swiftui/viewthatfits
        SampleItem("ViewThatFits") { ViewThatFitsSample() }
      ]),
    SampleSection(
      title: "Animations",
      samples: [
        // https://developer.apple.com/documentation/swiftui/view/matchedgeometryeffect(id:in:properties:anchor:issource:)
        SampleItem("matchedgeometryeffect") { MatchedGeometryEffectSample() }
      ]),
    SampleSection(
      title: "Custom Layout",
      samples: [
        // https://developer.apple.com/documentation/swiftui/layout
        SampleItem("Layout Protocol") { LayoutProtocolSample() }
      ]),
    SampleSection(
      title: "View Fundamentals",
      samples: [
        // https://developer.apple.com/documentation/swiftui/viewmodifier
        SampleItem("ViewModifier Protocol") { ViewModifierProtocolSample() }
      ]),
    SampleSection(
      title: "Shapes",
      samples: [
        SampleItem("Progress Indicator Arc") { ProgressIndicatorArcSample() },
        SampleItem("Stroke Border") { StrokeBorderSample() },
      ]),
    SampleSection(
      title: "View",
      samples: [
        SampleItem("Color Brightess") { ColorBrightnessSample() },
        SampleItem("Flipper Animation") { FlipperAnimationSample() },
      ]),
    SampleSection(
      title: "NumbersDataBasicValues",
      samples: [
        SampleItem("NumberFormatter") { NumberFormatterSample() }
      ]),
    SampleSection(
      title: "Contacts",
      samples: [
        SampleItem("CNContactStore") { CNContactStoreSample() }
      ]),
    SampleSection(
      title: "Shapes",
      samples: [
        SampleItem("AnimatingBorder") { AnimatingBorderSample() }
      ]),
    SampleSection(
      title: "View",
      samples: [
        SampleItem(".sheet") { SheetSample() }
      ]),
    SampleSection(
      title: "LiquidGlass",
      samples: [
        SampleItem("GlassEffectContainer") { GlassEffectContainerSample() }
      ]),
  ]

  public static var rootItems: [SampleItem] {
    sections.map { section in
      SampleItem(section.title) {
        SamplesList(title: section.title, samples: section.samples)
      }
    }
  }
}
