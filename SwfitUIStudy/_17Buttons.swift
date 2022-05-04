//
//  _17Buttons.swift
//  SwfitUIStudy
//
//  Created by jin on 5/4/22.
//

import SwiftUI

struct _17Buttons: View {
    
    @State var title: String = "This is my title"

    var body: some View {
                
        VStack(spacing:20) {
            Text(title)
            
            Button("Press me") {
                self.title = "BUTTON WAS PRESSED"
            }
            .accentColor(.red)
            
            Button {
                self.title = "Button #2 was pressed"
            } label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            }
            
            Button {
                self.title = "Button #3"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.red)
                    )
            }
            
            Button {
                self.title = "Button number #4"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
            }
        }
    }
}

struct _17Buttons_Previews: PreviewProvider {
    static var previews: some View {
        _17Buttons()
    }
}
