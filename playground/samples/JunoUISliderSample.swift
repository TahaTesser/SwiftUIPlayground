//
//  JunoUISliderSample.swift
//  playground
//
//  Created by Taha Tesser on 04.08.2024.
//

import SwiftUI
import JunoUI

struct JunoUISliderSample: View {
    @State var sliderValue: CGFloat = 0.5
    @State var isSliderActive = false
    
    var body: some View {
        VStack {
            GroupBox {
                JunoSlider(
                  sliderValue: $sliderValue,
                  maxSliderValue: 1.0,
                  baseHeight: 10.0,
                  expandedHeight: 22.0,
                  label: "Volume") { changed in
                    isSliderActive = changed
                  }
            }
          
        }
        .padding()
    }
}

#Preview {
    JunoUISliderSample()
}
