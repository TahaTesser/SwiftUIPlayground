//
//  GroupBoxSample.swift
//  playground
//
//  Created by Taha Tesser on 04.08.2024.
//

import SwiftUI

struct GroupBoxSample: View {
    var body: some View {
        VStack {
            
            GroupBox("Title") {
                Text(
                    "This is a GroupBox. Similar to a Card in Material Design and I love it!"
                )
            }
            .frame(width: 200)
            
            GroupBox {
                Text(
                    "This is a GroupBox. Similar to a Card in Material Design and I love it!"
                )
                
            } label: {
                Label("Title", systemImage: "airplane")
            }
            
        }
        .padding()
    }
}

#Preview {
    GroupBoxSample()
}
