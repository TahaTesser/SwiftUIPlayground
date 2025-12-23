//
//  LineChartSample.swift
//  SwiftUIPlayground
//
//  Created by Taha Tesser on 06.09.2024.
//

import Charts
import SwiftUI

struct LineChartSample: View {
  @State private var coffeeData = CoffeeData.mockData()

  private var areaBackground: Gradient {
    return Gradient(colors: [.brown, .brown.opacity(0.1)])
  }

  var body: some View {
    GroupBox("Daily Coffeee Consumption") {
      Chart(coffeeData) {
        LineMark(
          x: .value("Month", $0.date),
          y: .value("Amount", $0.coffee)
        )
        .symbol(.circle)
        .interpolationMethod(.catmullRom)
        .shadow(color: .brown, radius: 10)
        .foregroundStyle(.black)

        AreaMark(
          x: .value("Month", $0.date),
          y: .value("Amount", $0.coffee)
        )
        .interpolationMethod(.catmullRom)
        .foregroundStyle(areaBackground)
      }
      .chartXAxis {
        AxisMarks(values: .stride(by: .month, count: 1)) { _ in
          AxisValueLabel(format: .dateTime.month(.abbreviated).year(.twoDigits), centered: true)
        }
      }
      .chartYScale(domain: 0...30)
      .frame(height: 300)
    }
    .padding()
  }
}

struct CoffeeData: Identifiable {
  let id: UUID = .init()
  let date: Date
  let coffee: Int

  static func mockData() -> [CoffeeData] {
    let calendar = Calendar.current

    return [
      .init(date: calendar.date(from: DateComponents(year: 2023, month: 8, day: 1))!, coffee: 12),
      .init(date: calendar.date(from: DateComponents(year: 2023, month: 9, day: 1))!, coffee: 15),
      .init(date: calendar.date(from: DateComponents(year: 2023, month: 10, day: 1))!, coffee: 8),
      .init(date: calendar.date(from: DateComponents(year: 2023, month: 11, day: 1))!, coffee: 18),
      .init(date: calendar.date(from: DateComponents(year: 2023, month: 12, day: 1))!, coffee: 14),
      .init(date: calendar.date(from: DateComponents(year: 2024, month: 1, day: 1))!, coffee: 22),
    ]
  }
}

#Preview {
  LineChartSample()
}
