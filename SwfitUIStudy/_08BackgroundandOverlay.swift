//
//  08BackgroundandOverlay.swift
//  SwfitUIStudy
//
//  Created by jin on 4/27/22.
//

import SwiftUI

struct _8BackgroundandOverlay: View {
    var body: some View {
        // background
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(
//                Color.red
//                LinearGradient(gradient: <#T##Gradient#>, startPoint: <#T##UnitPoint#>, endPoint: <#T##UnitPoint#>)
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: 100, height: 100, alignment: .center)
            )

            .background(
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: 120, height: 120, alignment: .center)
            )
        
        //overlay
        Circle()
            .fill(Color.pink)
            .frame(width: 100, height: 100, alignment: .center)
            .overlay(
                Text("1")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            )
            .background(
                Circle()
                    .fill(Color.purple)
                    .frame(width: 110, height: 110)
            )
        
        Rectangle()
            .frame(width: 100, height: 100)
            .overlay(
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 50, height: 50)
                , alignment: .topLeading
            )
            .background(
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)
                ,alignment: .bottomTrailing
            )
        
//practical example
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(Color.white)
            .background(
                Circle()
                    .fill(LinearGradient(
                        gradient: Gradient(colors: [Color.blue, Color.red]),
                        startPoint: .leading,
                        endPoint: .trailing))
                    .frame(width: 100, height: 100)
                    .shadow(color: Color.red, radius: 10, x: 0.0, y: 10)
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                            .shadow(color: Color.red, radius: 10, x: 5, y: 5)
                        ,alignment: .bottomTrailing
                    )
            )
    }
}

struct _8BackgroundandOverlay_Previews: PreviewProvider {
    static var previews: some View {
        _8BackgroundandOverlay()
    }
}
