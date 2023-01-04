//
//  GalleryView.swift
//  Aldiv
//
//  Created by Cédric Bahirwe on 04/01/2023.
//

import SwiftUI

struct GalleryView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Gallery")
                    .font(.largeTitle.weight(.semibold))
                Spacer()
            }
            Grid(horizontalSpacing: 15, verticalSpacing: 15) {
                GridRow(alignment: .top) {
                    ForEach(1..<4) { i in
                        Image("gallery-\(i)")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 380)
                            .frame(height: 300)
                            .cornerRadius(15)
                    }
                }

                GridRow(alignment: .top) {
                    ForEach(4..<7) { i in
                        Image("gallery-\(i)")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 380)
                            .frame(height: 300)
                            .cornerRadius(15)
                    }
                }
            }

            Text("Voir Plus")
            .font(.title)
            .underline(true)
            .foregroundColor(blue)
        }
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
            .applyIpad()
    }
}
