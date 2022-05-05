//
//  10PaddingAndSpacing.swift
//  SwfitUIStudy
//
//  Created by jin on 4/30/22.
//

import SwiftUI

struct _0PaddingAndSpacing: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.yellow)
            //.padding()
            .padding(.all, 10) //how much padding want, Default is 10
            .padding(.leading, 20)
            .background(Color.blue)
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 20)
        
        VStack(alignment: .leading) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 10)
            
            Text("This is the description of what we will do on this screen. It is multiple lines and we will align  the text to the leading edge")
                .multilineTextAlignment(.leading) // default
        }
//        .background(Color.blue)
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .shadow(color: .black.opacity(0.3),
                        radius: 10,
                        x: 0, y: 0)
        )
        .padding(.horizontal, 10)
//        .background(Color.green)
    }
}

struct _0PaddingAndSpacing_Previews: PreviewProvider {
    static var previews: some View {
        _0PaddingAndSpacing()
    }
}

