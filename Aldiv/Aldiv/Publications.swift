//
//  Publications.swift
//  Aldiv
//
//  Created by Cédric Bahirwe on 04/01/2023.
//

import SwiftUI

struct Publications: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 25) {

            VStack(alignment: .leading) {
                Text("Publications")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                VStack(alignment: .leading, spacing: 20) {
                    Text("PROVINCE DU SUD KIVU")
                        .font(.largeTitle.weight(.semibold))
                        .applyHLine(100)
                    Text("I. Territoire de Kabare:")
                        .font(.largeTitle.weight(.semibold))
                        .foregroundColor(.gray)

                    VStack(alignment: .leading, spacing: 20) {
                        Text("1. Eau, Hygiène et Assainissement")
                            .font(.title.weight(.semibold))
                            .foregroundColor(blue)
                        sectionOne1
                        Divider()
                        sectionOne2
                    }
                    .padding()
                    .background(yellow)
                    .cornerRadius(15)

                    VStack(alignment: .leading, spacing: 20) {
                        Text("2. Environnement et Conservation de la nature")
                            .font(.title.weight(.semibold))
                            .foregroundColor(blue)

                        sectionTwo1
                    }
                    .padding()
                    .background(yellow)
                    .cornerRadius(15)
                    

                    VStack(alignment: .leading, spacing: 20) {
                        Text("3. Sécurité alimentaire")
                            .font(.title.weight(.semibold))
                            .foregroundColor(blue)

                        sectionThree1
                        Divider()
                        sectionThree2
                    }
                    .padding()
                    .background(yellow)
                    .cornerRadius(15)

                    VStack(alignment: .leading, spacing: 20) {

                        Text("4. Protection de l’enfant")
                            .font(.title.weight(.semibold))
                            .foregroundColor(blue)


                        sectionFour1
                    }
                    .padding()
                    .background(yellow)
                    .cornerRadius(15)
                }
                .padding()
                .frame(width: width/1.5, alignment: .leading)

            }

            VStack(alignment: .leading, spacing: 20) {
                Text("Perspectives d'avenir")
                    .font(.largeTitle.weight(.medium))
                    .foregroundColor(.secondary)
                    .applyHLine(100)

                HStack(alignment: .top) {
                    Text(persp1)

                    Text(persp2)
                }
                .font(.title)
                .fontWeight(.regular)
            }
            .padding()
            .frame(width: width/1.5)
            .background(yellow)
            .cornerRadius(10)
        }
        .frame(width: width/1.5)
    }
}

struct Publications_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            Publications()
        }.applyIpad()
    }
}

extension Publications {
    var sectionOne1: some View {
        VStack(alignment: .leading) {
            Image("p-famille-cikumbo")
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
            Text(pub1)
                .font(.title2)
                .fontWeight(.regular)
                .foregroundColor(.secondary)
        }
    }
    var sectionOne2: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 15) {

                Image("p-famille-ishungu-1")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                Image("p-famille-ishungu-2")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
            }

            Text(pub2)
                .font(.title2)
                .fontWeight(.regular)
                .foregroundColor(.secondary)
        }
    }

    var sectionTwo1: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 15) {

                Image("p-nature-1")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                Image("p-nature-2")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
            }

            Text(pub3)
                .font(.title2)
                .fontWeight(.regular)
                .foregroundColor(.secondary)
        }
    }

    var sectionThree1: some View {
        VStack(alignment: .leading) {
            Text(pub4)
                .font(.title2)
            Image("p-culture-1")
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
            Text("> Préparation du terrain d’Aldiv pour les cultures vivrières")
                .font(.title2)
                .fontWeight(.regular)
                .foregroundColor(.secondary)
        }
    }
    var sectionThree2: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 15) {
                Image("p-culture-2")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                Image("p-culture-3")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
            }

            Text("> Récolte des tomates au champ d’ALDIV à Luhihi")
                .font(.title2)
                .fontWeight(.regular)
                .foregroundColor(.secondary)
        }
    }

    var sectionFour1: some View {
        HStack(alignment: .top, spacing: 15) {
            VStack(alignment: .leading) {
                Image("p-mine-3")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                Text("> Enfants travaillant dans une briqueterie à Luhihi")
                    .font(.title2)
                    .fontWeight(.regular)
                    .foregroundColor(.secondary)

            }
            VStack(alignment: .leading) {
                Image("p-mine-1")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                Text("> Enfants exploitants artisanaux d’Or à Luhihi")
                    .font(.title2)
                    .fontWeight(.regular)
                    .foregroundColor(.secondary)
                Image("p-mine-4")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)

                Text("> Grotte servant d’habitation aux enfants creuseurs d’or à Luhihi")
                    .font(.title2)
                    .fontWeight(.regular)
                    .foregroundColor(.secondary)
            }        }
    }
}

let pub4 = """
· La culture maraichère: tomates, choux, aubergines;
· Légumineuses: haricots, soja;
· Tubercules: maniocs, patate douce, ignames, colocases;
· Céréales:  maïs et sorgho.
"""

let pub5 = """
Vulnérabilité des enfants en groupement de Luhihi où les enfants sont abusés par les exploitants miniers artisanaux et les briquetiers dans cette contrée à cause de la précarité de la vie des ménages incapables d'envoyer leurs enfants à l'école.
"""

let persp1 = """
· Leadership, bonne gouvernance et résolution pacifique des conflits
·  Lutte contre les Violences Basées sur le Genre (VBG)
· Relèvement communautaire et autonomisation de la femme
"""

let persp2 = """
· Assistance aux populations victimes des conflits armés
· Promotion des AVEC (Association Villageoise d’Epargne et de Crédit) par l'aquaculture et le petit commerce
"""
