//
//  Content.swift
//  Aldiv
//
//  Created by Cédric Bahirwe on 04/01/2023.
//

import SwiftUI

let screenSize = UIScreen.main.bounds.size
let width = screenSize.width
let height = screenSize.height

let offWhite = Color(243, 235, 225)
let blue = Color(1, 50, 255)
let yellow = Color(244, 236, 194).opacity(0.5)

let menuOptions = ["Accueil", "A Propos", "Publications", "Gallerie", "Contact"]
let socials = ["facebook", "linkedin", "twitter", "instagram"]
let creation = "ALDIV Asbl a été créée à Goma à l’Est de la en RD Congo où se trouve son siège social.\nEn effet, pendant plus de deux décennies, les conflits armés en vogue à l’Est de la RD Congo ont profondément  affecté et détruit les tissus socioéconomiques  et culturels des populations vivant dans cette partie du pays avec leur cortège de malheurs notamment les déplacements massifs des populations, les conflits intercommunautaires cause de haine, de méfiance, de discrimination et de violences sous multiples formes occasionnant ainsi une situation de nature  à ne pas favoriser la cohésion et l’harmonie sociales. C’est donc dans ce contexte complexe qu’est née ALDIV afin d’apporter sa contribution dans les stratégies, programmes ou actions visant la normalisation de la situation, de recréer un climat de confiance, de paix et de stabilité socioéconomique, facteur du développement dans cette Zone au profit des communautés affectées par les affres de la guerre.  Régie par la loi congolaise, Aldiv est une organisation humanitaire, apolitique, non confessionnelle, respectueuse des principes fondamentaux du droit humanitaire."


let pub1 = "> Sensibilisation sur la prévention et la lutte contre les maladies hydriques  et infections sexuelles dans le village de Cikumbo en groupement de Luhihi au Nord-Est du territoire de Kabare  au profit de 300 ménages."

let pub2 = "> Sensibilisation sur les maladies hydriques et distribution des comprimés aquatabs pour la désinfection de l’eau dans le groupement d’Ishungu au Nord-Est du territoire de Kabare au profit de 120 ménages."


let pub3 = "> Mise en place des pépinières agroforestières : 300000 plantules prêtes pour le repiquage"

let stats: [(Int, String)] = [
    (120, "Ménages sensibilisés sur les maladies hydriques"),
    (300, "Ménages sensibiliséssur la prévention et la lutte contre les maladies hydriques  et infections sexuelles"),
    (300_000, "Plantules mise en place des pépinières agroforestières")
]

