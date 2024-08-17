//
//  DynamicDatesSample.swift
//  playground
//
//  Created by Taha Tesser on 17.08.2024.
//

import SwiftUI

struct RelativeDateStyleSample: View {
    let eventDate = Date().addingTimeInterval(3600) // One hour from now

    var body: some View {
        Text("\(eventDate, style: .relative) left until the event")
            .monospacedDigit()
    }
}

#Preview {
    RelativeDateStyleSample()
}
