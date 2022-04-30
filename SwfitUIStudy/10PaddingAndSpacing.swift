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
            .padding(.all, 10) //how much padding want
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
            
            Text("This is the description of what we will do on this screen. It is multiple lines and we will align  the text to the leading edge")
                .multilineTextAlignment(.leading) // default
        }
        .background(Color.blue)
        .padding()
        .background(Color.red)
        .padding(.horizontal, 10)
        .background(Color.green)
    }
}

struct _0PaddingAndSpacing_Previews: PreviewProvider {
    static var previews: some View {
        _0PaddingAndSpacing()
    }
}

