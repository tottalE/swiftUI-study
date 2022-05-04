//
//  _19ExtractedFunction.swift
//  SwfitUIStudy
//
//  Created by jin on 5/4/22.
//

import SwiftUI

struct _19ExtractedFunction: View {
    
    @State var backGroundColor: Color = Color.pink
    
    var body: some View {
        ZStack {
            // background
            backGroundColor.edgesIgnoringSafeArea(.all)
            
            //content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button(action: {
                buttonPressed()
            }, label: {
                Text("PRESS ME")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            })
        }
    }
    
    func buttonPressed() {
        backGroundColor = .yellow
    }
}

struct _19ExtractedFunction_Previews: PreviewProvider {
    static var previews: some View {
        _19ExtractedFunction()
    }
}
