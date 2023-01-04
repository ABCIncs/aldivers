//
//  ContentView.swift
//  Aldiv
//
//  Created by Cédric Bahirwe on 04/01/2023.
//

import SwiftUI

let screenSize = UIScreen.main.bounds.size
let width = screenSize.width
let height = screenSize.height

let blue = Color(1, 50, 255)
let black = Color(255, 255, 255)
let yellow = Color(255, 239, 255)

let menuOptions = ["Accueil", "A Propos", "Offres", "Gallerie", "Contact"]

struct ContentView: View {
    @State private var selectedOption: String = menuOptions.first!
    @State private var readMore = false

    var body: some View {

        ScrollView {
            VStack(spacing: 0) {
                menuView
                introView

                VStack(alignment: .leading, spacing: 20) {
                    Text("Bienvenue à ALDVIV")
                        .font(.largeTitle.weight(.medium))
                    if #available(iOS 16.0, *) {
                        Text(creation)
                            .font(.title2)
                            .fontWeight(.regular)
                            .lineLimit(readMore ? 10 : 4)

                        Button.init {
                            withAnimation {
                                readMore.toggle()
                            }
                        } label: {
                            Text("Savoir Plus")
                                .font(.title3)
                                .padding(8)
                        }
                        .buttonStyle(.borderedProminent)

                    }
                }
                .padding()
                .background(blue.opacity(0.1))
                .cornerRadius(10)
                .frame(width: width/2.38)
                .padding()

                ContactView()
                FooterView()
            }
        }
        .accentColor(blue)
        .preferredColorScheme(.light)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .applyIpad()
    }
}



extension ContentView {
    var menuView: some View {
        HStack {
            Text("LOGO HERE")
                .font(.largeTitle.bold())
                .foregroundColor(blue)
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
                        }
                }
            }

        }
        .padding()
        .frame(height: 80)
    }
    var introView: some View {
        ZStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .overlay {
                    Color.clear
                        .background(.ultraThinMaterial)
                        .opacity(0.98)
                }

            VStack {
                Text("ASSOCIATION POUR LA LUTTE CONTRE LA DISCRIMINATION ET LA VIOLENCE")
                Text("--HUMANISME-JUSTICE-DEVELOPPEMENT--")
            }
            .font(.system(size: 50, weight: .bold))
        }
    }
}

let creation = "ALDIV Asbl a été créée à Goma à l’Est de la en RD Congo où se trouve son siège social.\nEn effet, pendant plus de deux décennies, les conflits armés en vogue à l’Est de la RD Congo ont profondément  affecté et détruit les tissus socioéconomiques  et culturels des populations vivant dans cette partie du pays avec leur cortège de malheurs notamment les déplacements massifs des populations, les conflits intercommunautaires cause de haine, de méfiance, de discrimination et de violences sous multiples formes occasionnant ainsi une situation de nature  à ne pas favoriser la cohésion et l’harmonie sociales. C’est donc dans ce contexte complexe qu’est née ALDIV afin d’apporter sa contribution dans les stratégies, programmes ou actions visant la normalisation de la situation, de recréer un climat de confiance, de paix et de stabilité socioéconomique, facteur du développement dans cette Zone au profit des communautés affectées par les affres de la guerre.  Régie par la loi congolaise, Aldiv est une organisation humanitaire, apolitique, non confessionnelle, respectueuse des principes fondamentaux du droit humanitaire."

