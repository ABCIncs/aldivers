//
//  ContactView.swift
//  Aldiv
//
//  Created by Cédric Bahirwe on 04/01/2023.
//

import SwiftUI
import MapKit

struct ContactView: View {
    var body: some View {
        VStack(alignment: .leading) {

            Text("Contact")
                .font(.largeTitle.weight(.semibold))


            VStack {
                adressView
                HStack( spacing: 22) {
                    emailView
                    callView
                }
            }

           infoView
//            mapView

        }
        .padding(20)
        .frame(maxWidth: width/1.5)
        .background(Color(.secondarySystemBackground).ignoresSafeArea())

    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
            .applyIpad()
    }
}

extension ContactView {
    var adressView: some View {
        VStack(spacing: 15) {

                Image(systemName: "mappin.circle.fill")
                    .resizable()
                    .foregroundColor(blue)
                    .frame(width: 60, height: 60)

                Text("Nos adresses")
                    .foregroundColor(.secondary)
                    .fontWeight(.bold)
            Group {
                Text("\(Text("Goma:").bold()) N°12, Avenue du Musée, Quartier Himbi, Commune de Goma, Province du Nord-Kivu, RD Congo.")
                Text("\(Text("Bukavu:").bold()) N°077, Avenue de la Poste, Quartier Ndendere, Commune d’Ibanda, Province du Sud-Kivu, RD Congo.")

            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .font(.title)
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.background)
        .cornerRadius(10)
    }

    var emailView: some View {
        VStack(spacing: 10) {
            Image(systemName: "envelope.circle.fill")
                .resizable()
                .foregroundColor(blue)
                .frame(width: 50, height: 50)

            Text("Envoyez-Nous un mail")
                .foregroundColor(.secondary)
                .fontWeight(.bold)

            Link("aldiv.rdc20@gmail.com", destination: URL(string: "mailto:aldiv.rdc20@gmail.com")!)

            Link("bonybah2013@gmail.com", destination: URL(string: "mailto:bonybah2013@gmail.com")!)
        }
        .font(.title2)
        .padding()
        .frame(maxWidth: .infinity)
        .background(.background)
        .cornerRadius(10)
    }

    var callView: some View {
        VStack(spacing: 10) {
            Image(systemName: "phone.circle.fill")
                .resizable()
                .foregroundColor(blue)
                .frame(width: 50, height: 50)

            Text("Appelez-Nous")
                .foregroundColor(.secondary)
                .fontWeight(.bold)

            Link("+243 892304384", destination: URL(string: "tel:+243892304384")!)

            Link("+243 990188046", destination: URL(string: "tel:+243990188046")!)

        }
        .font(.title2)
        .padding()
        .frame(maxWidth: .infinity)
        .background(.background)
        .cornerRadius(10)

    }

    var mapView: some View {

        Map(mapRect: .constant(MKMapRect.init(x: 0, y: 0, width: 300, height: 300)))
    }

    var infoView: some View {
        VStack(spacing: 20) {
            HStack(spacing: 25) {
                TextField("Votre nom", text: .constant(""))
                    .padding()
                    .border(.secondary)
                    .background(.background)

                TextField("Votre Email", text: .constant(""))
                    .padding()
                    .border(.secondary)
                    .background(.background)
            }

            TextField("Sujet ", text: .constant(""))
                .padding(10)
                .border(.secondary)
                .background(.background)


            TextField("Message", text: .constant(""))
                .frame(minHeight: 90, alignment: .topLeading)
                .padding(10)
                .border(.secondary)
                .background(.background)

            Button {
                // Send Message
            } label: {
                Text("Envoyer le message")
                    .font(.title2)
                    .padding()
            }
            .buttonStyle(.borderedProminent)

        }
        .padding(20)
        .frame(maxWidth: .infinity)
        .background(.background)
        .cornerRadius(10)
    }
}
