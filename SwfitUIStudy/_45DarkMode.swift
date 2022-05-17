//
//  _45DarkMode.swift
//  SwfitUIStudy
//
//  Created by jin on 5/17/22.
//

import SwiftUI

struct _45DarkMode: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    // 자동으로 다크모드에 색이 변함
                    Text("This text is Primary")
                        .foregroundColor(.primary)
                    Text("This color is Secondary")
                        .foregroundColor(.secondary)
                    Text("This color is Black")
                        .foregroundColor(.black)
                    Text("This color is White")
                        .foregroundColor(.white)
                    Text("This color is Red")
                        .foregroundColor(.red)
                    Text("This color is globally adaptive!")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("This color is locally adaptive!")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

struct _45DarkMode_Previews: PreviewProvider {
    static var previews: some View {
        _45DarkMode()
            .preferredColorScheme(.light)
        
        _45DarkMode()
            .preferredColorScheme(.dark)
    }
}
