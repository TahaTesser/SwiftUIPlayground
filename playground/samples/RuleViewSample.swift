//
//  RuleViewSample.swift
//  playground
//
//  Created by Taha Tesser on 05.08.2024.
//

import SwiftUI

struct RuleViewSample: View {
  var body: some View {
    ZStack {
      RoundedRectangle(cornerRadius: 16.0)
        .fill(.black.gradient)
        .frame(height: 100.0)
        .overlay(
          RoundedRectangle(cornerRadius: 16.0)
            .stroke(.gray.opacity(0.3), lineWidth: 2.0)
        )
        .padding(.horizontal)
      ScrollView(.horizontal, showsIndicators: false) {
        HStack(spacing: 0) {
          ForEach(1...1000, id: \.self) { number in
            VStack {
              Text("\(number)")
                .font(.system(size: 32, weight: .bold, design: .rounded))
                .foregroundStyle(.white)
                .padding(.bottom, -8)
              ZStack {
                Rectangle().fill(.gray)
                  .frame(width: 2, height: 20)
                HStack(spacing: 0) {
                  ForEach(0..<10) { index in
                    if index > 0 {
                      Rectangle().fill(.gray).frame(width: 1, height: 10)
                    }
                    Spacer()
                      
                  }
                }.frame(width: 50, height: 10)
              }
                
            }.frame(width: 80)
          }
        }.scrollTargetLayout()
      }
      .scrollTargetBehavior(.viewAligned)
      .padding(.horizontal)
        
      Image(systemName: "triangle.fill").resizable()
        .frame(width: 30, height: 20)
        .rotationEffect(.degrees(180))
        .foregroundColor(.red)
        .offset(y: -50)
    }
    .padding()
    Spacer()
  }
}

#Preview {
  RuleViewSample()
}
