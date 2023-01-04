//
//  MenuView.swift
//  Aldiv
//
//  Created by Cédric Bahirwe on 04/01/2023.
//

import SwiftUI

struct MenuView: View {
    @State private var selectedOption: String = menuOptions.first!
    var onSelectOption: (String)  -> Void = { _ in }
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Spacer()
                HStack(spacing: 10) {
                    ForEach(socials, id:\.self) { social in
                        Image(social)
                            .resizable()
                            .scaledToFit()
                            .padding(10)
                            .frame(width: 50, height: 50)
                            .background(Color.blue.opacity(0.5))
                            .cornerRadius(8)
                            .foregroundColor(.white)
                    }
                }
                .padding()
            }
            .background(.black, ignoresSafeAreaEdges: .all)
            .ignoresSafeArea()
            HStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()

                Spacer()
                HStack(spacing: 20) {
                    ForEach(menuOptions, id:\.self) { option in
                        Text(option)
                            .font(.title.weight(.semibold))
                            .foregroundColor(
                                selectedOption == option ? blue : .primary
                            )
                            .onTapGesture {
                                selectedOption = option
                                onSelectOption(option)
                            }
                    }
                }

            }
            .padding()
            .frame(height: 80)
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
