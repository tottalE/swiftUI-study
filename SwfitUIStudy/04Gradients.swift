//
//  03Gradients.swift
//  SwfitUIStudy
//
//  Created by jin on 4/27/22.
//

import SwiftUI

struct _3Gradients: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color.red
//                LinearGradient(
//                    gradient: Gradient(colors: Color.purple, Color.blue]),
//                    startPoint: .topLeading,
//                    endPoint: .bottom)
//
//                RadialGradient(
//                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9951999784, green: 0.9034523368, blue: 0.0004972358001, alpha: 1)), Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))]),
//                    center: .trailing,
//                    startRadius: 5,
//                    endRadius: 200)
                
                AngularGradient(gradient: Gradient(colors: [Color("Peach"), Color.blue]),
                                center: .center,
                                angle: .degrees(180 + 45))
            )
            .frame(width: 300, height: 200)
    }
}

struct _3Gradients_Previews: PreviewProvider {
    static var previews: some View {
        _3Gradients()
    }
}
