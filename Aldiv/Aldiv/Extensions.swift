//
//  Extensions.swift
//  Aldiv
//
//  Created by Cédric Bahirwe on 04/01/2023.
//

import SwiftUI

extension View {
    func applyIpad() -> some View {
        self
            .previewDevice(.init(stringLiteral: "iPad Pro (12.9-inch) (6th generation)"))
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

extension Color {
    init(_ r: Double, _ g: Double, _ b: Double, opacity: Double = 1) {
        self.init(red: r/255, green: g/255, blue: b/255)
    }
}
