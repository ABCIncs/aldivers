//
//  AProposView.swift
//  Aldiv
//
//  Created by Cédric Bahirwe on 04/01/2023.
//

import SwiftUI

struct AProposView: View {
    var onReadMorePressed: () -> Void = { }
    var body: some View {
        VStack(alignment: .leading, spacing: 25) {
            VStack(alignment: .leading) {
                Text("A propos")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                VStack(alignment: .leading, spacing: 20) {
                    Text("Bienvenue à ALDVIV")
                        .font(.largeTitle.weight(.semibold))
                        .foregroundColor(.gray)
                        .applyHLine(100)

                    Text(creation)
                        .font(.title2)
                        .fontWeight(.regular)
                        .lineLimit(5)

                    Button(action: onReadMorePressed) {
                        Text("Savoir Plus")
                            .font(.title3)
                            .padding(8)
                    }
                }
                .padding()
                .frame(width: width/1.5)
                .background(offWhite)
                .cornerRadius(10)
            }

            VStack(alignment: .leading, spacing: 20) {
                Text("Objectifs")
                    .font(.largeTitle.weight(.semibold))
                    .foregroundColor(.gray)
                    .applyHLine(100)

                Text(objectifSpecific)
                    .font(.title)
            }
            .padding()
            .frame(width: width/1.5)
            .background(offWhite)
            .cornerRadius(10)


            VStack(alignment: .leading, spacing: 20) {
                Text("Domaines d’intervention")
                    .font(.largeTitle.weight(.medium))
                    .foregroundColor(.gray)
                    .applyHLine(100)

                HStack(alignment: .top) {
                    Text(domaine1)

                    Text(domaine2)
                }
                .font(.title)
                .fontWeight(.regular)
            }
            .padding()
            .frame(width: width/1.5)
            .background(offWhite)
            .cornerRadius(10)
        }
        .padding()
    }
}

struct AProposView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            AProposView()
        }
            .applyIpad()

    }
}

let objectifSpecific = """
· Protéger les catégories vulnérables marginalisées dont les femmes et les enfants, les vieillards, les orphelins, les albinos, les personnes vivant avec handicap, les peuples autochtones;\n
· Renforcer les capacités des autorités locales et autres leaders communautaires sur la bonne gouvernance,  la paix, le respect des droits humains, la cohabitation et la résolution pacifique des conflits, le relèvement communautaire, autonomisation de la femme,…;\n
- Lutter contre le réchauffement climatique par la protection des écosystèmes ;
· Accompagner la communauté dans la lutte contre les maladies hydriques, les MST/IST);\n
· Accompagner la communauté dans les actions de la sécurité alimentaire;\n
· Sensibiliser la communauté sur le genre et  l ’autonomisation de la femme.
"""

let domaine1 = """
· Education, Droits de l’Homme et Protection
· Eau, Hygiène et Assainissement
· Sécurité alimentaire
· Résolution pacifique des conflits
"""

let domaine2 = """
· Leadership et Bonne gouvernance
· Développement communautaire
· Environnement et conservation de la nature
"""
