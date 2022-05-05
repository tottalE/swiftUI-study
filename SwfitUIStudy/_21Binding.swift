//
//  _21Binding.swift
//  SwfitUIStudy
//
//  Created by jin on 5/5/22.
//

import SwiftUI

struct _21Binding: View {
    
    @State var backGroundColor: Color = Color.green
    @State var title: String = "TITLE"
    var body: some View {
        ZStack {
            backGroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text(title)
                ButtonView(backGroundColor: $backGroundColor, title: $title)
            }
        }
    }
}

struct ButtonView: View {
    
    @Binding var backGroundColor: Color
    @Binding var title: String
    @State var buttonColor: Color = Color.blue
    
    var body: some View {
        Button(action: {
            backGroundColor = Color.orange
            buttonColor = Color.pink
            title = "BUTTON IS PRESSED"
        }, label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        })
    }
}

struct _21Binding_Previews: PreviewProvider {
    static var previews: some View {
        _21Binding()
    }
}
