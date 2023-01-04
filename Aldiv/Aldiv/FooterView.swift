//
//  FooterView.swift
//  Aldiv
//
//  Created by Cédric Bahirwe on 04/01/2023.
//

import SwiftUI

struct FooterView: View {
    let socials = ["twitter", "facebook", "instagram", "linkedin"]
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 50) {

                VStack(spacing: 20) {
                    Text("ALDIV")
                        .font(.largeTitle.bold())

                    HStack(spacing: 10) {
                        ForEach(socials, id:\.self) { social in
                            Image(social)
                                .resizable()
                                .scaledToFit()
                                .padding(10)
                                .frame(width: 50, height: 50)
                                .background(Color.blue.opacity(0.25))
                                .cornerRadius(5)
                        }
                    }
                    .padding()
                }
                .frame(width: width/3.5, height: 200)
                .background(Color.black.opacity(0.8))
                .cornerRadius(20)

                VStack(alignment: .leading, spacing: 20) {
                    Text("Liens Directs")
                        .font(.title.weight(.bold))

                    HStack(alignment: .top, spacing: 20) {
                        VStack(alignment: .leading, spacing: 20) {
                            optionView(menuOptions[0])
                            optionView(menuOptions[1])
                            optionView(menuOptions[2])
                        }

                        VStack(alignment: .leading, spacing: 20) {
                            optionView(menuOptions[3])
                            optionView(menuOptions[4])

                        }
                    }
                }
            }

            Divider()
                .background(.white)

            VStack(spacing: 15) {
                Text("© Copyright **ALDIV**. All Rights Reserved")
                HStack {
                    Text("Designed by")
                    Link("ABC Incs", destination: URL(string: "https://github.com/ABCIncs")!)
                        .foregroundColor(blue)
                }
            }
            .padding()
        }
        .padding(30)
        .frame(maxWidth: .infinity)
        .background(Color.black.opacity(0.7))
        .overlay(alignment: .bottomTrailing) {
            Button {
                // Scroll to top
            } label: {
                Image(systemName: "arrow.up")
                    .resizable()
                    .foregroundColor(.white)
                    .padding(15)
                    .frame(width: 50, height: 50)
                    .background(.orange)
                    .cornerRadius(5)
            }
            .padding()
        }
        .foregroundColor(Color(.systemBackground))
    }

    func optionView(_ option: String) -> some View {
        HStack {
            Image(systemName: "chevron.right")
                .foregroundColor(.orange)
            Text(option)
        }
        .font(.title2.weight(.semibold))
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .applyIpad()
    }
}
