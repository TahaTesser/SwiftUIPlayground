//
//  LayoutProtocolSample.swift
//  SwiftUIPlayground
//
//  Created by Taha Tesser on 10/14/24.
//

// Reference https://sarunw.com/posts/swiftui-custom-layout/

import SwiftUI

struct LayoutProtocolSample: View {
    var body: some View {
        BackslashStack {
            Text("Lorem")
                .border(.yellow)
            Text("eveniet facilis")
                .border(.blue)
            Text("possimus eaque adipisci ")
                .border(.green)
        }
        .border(.pink)
    }
}

#Preview {
    LayoutProtocolSample()
}

struct BackslashStack: Layout {
    
    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        
        let subviewSizes = subviews.map { proxy in
            return proxy.sizeThatFits(.unspecified)
        }
        
        let combinedSize = subviewSizes.reduce(.zero) { currentSize, subviewSize in
            
            return CGSize(
                width: currentSize.width + subviewSize.width, height: currentSize.height + subviewSize.height)
        }
        
        return combinedSize
    }
    
    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
        
        
        let subviewSizes = subviews.map { proxy in
            return proxy.sizeThatFits(.unspecified)
        }
        
        var x = bounds.minX
        var y = bounds.minY
        
        for index in subviews.indices {
            let subviewSize = subviewSizes[index]
            let sizeProposal = ProposedViewSize(
                width: subviewSize.width,
                height: subviewSize.height)
            
            subviews[index]
                .place(
                    at: CGPoint(x: x, y: y),
                    proposal: sizeProposal)
            
            x += subviewSize.width
            y += subviewSize.height
        }
    }
    
}
