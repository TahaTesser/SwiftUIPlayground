//
//  AlignmentGuideSample.swift
//  SwiftUIPlayground
//
//  Created by Taha Tesser on 10/14/24.
//

import SwiftUI

struct AlignmentGuideSample: View {
    var body: some View {
        VStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.red)
                .frame(width: 50, height: 200)
//                .alignmentGuide(.leading, computeValue: { dimension in
//                    -100
//                })
                .alignmentGuide(.leading, computeValue: { dimension in
                    dimension[.trailing]
                })
            Text("Testing the alignment")
                .border(.orange)
                .frame(width: 250, height: 50)
//                .alignmentGuide(.leading, computeValue: { dimension in
//                    dimension[.trailing]
//                })
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(width: 100, height: 100)
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.green)
                .frame(width: 50, height: 50)
        }
    }
}

#Preview {
    AlignmentGuideSample()
}
