//
//  Untitled.swift
//  SwiftUIPlayground
//
//  Created by Taha Tesser on 16.05.2026.
//

import SwiftUI

struct Polygon: Shape {
    let sides: Int

    func path(in rect: CGRect) -> Path {
        guard sides >= 3 else { return Path() }

        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(rect.width, rect.height) / 2

        var path = Path()

        for side in 0..<sides {
            let angle = Angle.degrees(
                Double(side) / Double(sides) * 360 - 90
            )

            let point = CGPoint(
                x: center.x + CGFloat(cos(angle.radians)) * radius,
                y: center.y + CGFloat(sin(angle.radians)) * radius
            )

            if side == 0 {
                path.move(to: point)
            } else {
                path.addLine(to: point)
            }

        }

        path.closeSubpath()
        return path
    }
}

extension ShapeStyle where Self == LinearGradient {
    static var polygonGradient: LinearGradient {
        LinearGradient(
            colors: [.purple, .pink],
            startPoint: .top,
            endPoint: .bottom)
    }
}

struct PolygonSample: View {
    var body: some View {
        VStack(spacing: 16) {
            Polygon(sides: 3)
                .fill(.polygonGradient)
            Polygon(sides: 5)
                .fill(.polygonGradient)
            Polygon(sides: 6)
                .fill(.polygonGradient)
            Polygon(sides: 8)
                .fill(.polygonGradient)
        }
    }
}

#Preview {
    PolygonSample()
}
