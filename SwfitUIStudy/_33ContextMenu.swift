//
//  _33ContextMenu.swift
//  SwfitUIStudy
//
//  Created by jin on 5/12/22.
//

import SwiftUI

struct _33ContextMenu: View {
    
    @State var backgroundColor: Color = .blue
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftul thinking")
                .font(.headline)
            Text("How to use Context menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding()
        .background(backgroundColor.cornerRadius(30))
        .contextMenu(menuItems: {
            Button("♥️ - Hearts",action: {
                backgroundColor = .green
            })
            Button("♣️ - Clubs",action: {
                backgroundColor = .yellow
            })
            Button("♠️ - Spades",action: {
                backgroundColor = .red
            })
            Button("♦️ - Diamonds",action: {
                backgroundColor = .purple
            })
        })
    }
}

struct _33ContextMenu_Previews: PreviewProvider {
    static var previews: some View {
        _33ContextMenu()
    }
}
