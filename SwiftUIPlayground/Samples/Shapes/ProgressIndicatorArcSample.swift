//
//  ProgressIndicatorArcSample.swift
//  SwiftUIPlayground
//
//  Created by Taha Tesser on 11/5/24.
//

import SwiftUI

struct ProgressIndicatorArcSample: View {
  let sunYellow = Color(UIColor(red: 1.0, green: 0.85, blue: 0.2, alpha: 1.0))  // RGB: (255, 217, 51)
  let sunOrange = Color(UIColor(red: 1.0, green: 0.64, blue: 0.0, alpha: 1.0))  // RGB: (255, 165, 0)
  var body: some View {
    ZStack {
      _ProgressView(
        startAngle: .degrees(-90),
        endAngle: .degrees(90),
        clockwise: true
      )
      .fill(sunOrange)

      _ProgressView(
        startAngle: .degrees(-90),
        endAngle: .degrees(90),
        clockwise: false
      )
      .fill(sunYellow)
    }

    .padding()
  }
}

struct _ProgressView: Shape {
  var startAngle: Angle
  var endAngle: Angle
  var clockwise: Bool

  func path(in rect: CGRect) -> Path {
    var path = Path()

    path.addArc(
      center: CGPoint(x: rect.midX, y: rect.midY),
      radius: rect.width / 2,
      startAngle: startAngle,
      endAngle: endAngle,
      clockwise: clockwise
    )

    return path
  }
}

#Preview {
  ProgressIndicatorArcSample()
}
