//
//  Label.swift
//  LabelMaker
//
//  Created by Jia Chen on 2024/10/16.
//

import Foundation
import SwiftUI


struct Label: Hashable, Codable {
    var id = UUID()
    var text = ""
    var cornerRadius = 20.0
    var colorIndex = 0
    
    static let colors: [Color] = [.cyan, .green, .indigo]
    
    func selectedColor() -> Color {
        Label.colors[colorIndex]
    }
}
