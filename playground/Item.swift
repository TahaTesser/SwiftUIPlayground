//
//  Item.swift
//  playground
//
//  Created by Taha Tesser on 04.08.2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
