//
//  HomeView.swift
//  UIPortfolioWatch
//
//  Created by Asael Rodriguez on 12/08/26.
//

import Foundation
import SwiftUI

struct HomeView : View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Hello!")
                    .frame(maxWidth: .infinity, alignment: .leading)

                Text("Welcome back")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundStyle(.gray)
                    .padding(.bottom, 8)
                
                ItemMenu(title: "Learning", subtitle: "Your session is ready", image: "book")
                ItemMenu(title: "Notifications", subtitle: "You have 3 new updates", image: "bell")
                ItemMenu(title: "Profile", subtitle: "View your progress", image: "person.crop.circle")
                    
                
                
            }
            .padding()
        }
        .navigationTitle("Home")
    }
}

struct ItemMenu : View {
    
    var title : String
    let subtitle : String
    let image : String
    
    var body: some View {
        HStack(spacing: 8) {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(.blue)
                ImageView(image: Image(systemName: image), size: 18)
            }
            .frame(width: 40, height: 40)
            
            VStack(alignment: .leading, spacing: 2) {
                Text(title)
                    .font(.caption2)
                    // Fuerza el titulo a ocupar una sola linea.
                    .lineLimit(1)
                    // Reduce el texto si no cabe en el espacio disponible.
                    .minimumScaleFactor(0.6)
                    // Ajusta un poco el espacio entre letras para evitar cortes.
                    .allowsTightening(true)
                Text(subtitle)
                    .font(.caption2)
                    .foregroundStyle(.gray)
                    .lineLimit(2)
                    .minimumScaleFactor(0.7)
                    .allowsTightening(true)
            }
            // Hace que el texto use el espacio libre entre icono y flecha.
            .frame(maxWidth: .infinity, alignment: .leading)
            // Da prioridad al texto antes de recortar su ancho.
            .layoutPriority(1)
            
            ImageView(image: Image(systemName: "chevron.right"), size: 14)
        }
        // Iguala el ancho y la altura minima de cada tarjeta.
        .frame(maxWidth: .infinity, minHeight: 60)
        .padding(.horizontal, 12)
        .padding(.vertical, 10)
        .background(
            RoundedRectangle(cornerRadius: 18)
                // Crea el fondo redondeado semitransparente.
                .fill(Color.white.opacity(0.12))
        )
        
    }
}
