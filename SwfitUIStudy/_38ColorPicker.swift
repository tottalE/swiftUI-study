//
//  _38ColorPicker.swift
//  SwfitUIStudy
//
//  Created by jin on 5/12/22.
//

import SwiftUI

struct _38ColorPicker: View {
    
    @State var backgroundColor: Color = .green
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            ColorPicker("Select a color",
                        selection: $backgroundColor,
                        supportsOpacity: true)
            .padding()
            .background(Color.black)
            .cornerRadius(10)
            .foregroundColor(.white)
            .font(.headline)
            .padding(50)
        }
    }
}

struct _38ColorPicker_Previews: PreviewProvider {
    static var previews: some View {
        _38ColorPicker()
    }
}
