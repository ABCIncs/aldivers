//
//  ContentView.swift
//  Aldiv
//
//  Created by Cédric Bahirwe on 04/01/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        ScrollViewReader { reader in
            ScrollView {
                VStack(spacing: 0) {
                    MenuView {
                        if let firstIndex = menuOptions.firstIndex(of: $0) {
                            withAnimation {
                                reader.scrollTo(firstIndex, anchor: .top)
                            }
                        }
                    }
                    CoverView()
                        .id(0)
                    AProposView()
                        .id(1)
                    Publications()
                        .id(2)
                    GalleryView()
                        .id(3)
                    ContactView()
                        .id(4)
                    FooterView()
                }
            }
        }
        .accentColor(blue)
        .background(Color(.secondarySystemBackground), ignoresSafeAreaEdges: .all)
        .preferredColorScheme(.light)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .applyIpad()
    }
}
