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

    func applyHLine(_ width: CGFloat, color: Color = .red) -> some View {
        HStack(spacing: 5) {
            self
        Rectangle()
                .fill(color)
                .frame(width: width, height: 2)
        }
    }
}

extension Color {
    init(_ r: Double, _ g: Double, _ b: Double, opacity: Double = 1) {
        self.init(red: r/255, green: g/255, blue: b/255)
    }
}
