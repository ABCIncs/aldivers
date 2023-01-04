//
//  CoverView.swift
//  Aldiv
//
//  Created by Cédric Bahirwe on 04/01/2023.
//

import SwiftUI

struct CoverView: View {
    var body: some View {
        ZStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .frame(height: height*0.81)
                .overlay {
                    Color.clear
                        .background(.ultraThinMaterial)
                        .opacity(0.98)
                }
            
            VStack {
                Text("Titre Principal a mettre ici...")
                Text("--Sous Titre--")
            }
            .font(.system(size: 50, weight: .bold))
        }
    }
}

struct CoverView_Previews: PreviewProvider {
    static var previews: some View {
        CoverView()
    }
}
