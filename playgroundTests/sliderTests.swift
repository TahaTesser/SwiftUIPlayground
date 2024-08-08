//
//  sliderTest.swift
//  playgroundTests
//
//  Created by Taha Tesser on 08.08.2024.
//

import Testing
import SwiftUI
import XCTest

struct sliderTests {
  
  @Test func testInitialSliderValue() throws {
    let sliderSample = SliderSample()
    XCTAssertEqual(sliderSample.sliderValue, 50.0, "Initial slider value should be 50.0")
  }
  
}
