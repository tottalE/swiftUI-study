//
//  _24Animation.swift
//  SwfitUIStudy
//
//  Created by jin on 5/6/22.
//

import SwiftUI

struct _24Animation: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
//                withAnimation(
//                    Animation
//                        .default
////                        .delay(2.0)
//                        .repeatCount(5, autoreverses: true)
//                ){
//                    isAnimated.toggle()
//                }
                isAnimated.toggle()
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
                .animation(.easeIn)
            
            Spacer()
        }
    }
}

struct _24Animation_Previews: PreviewProvider {
    static var previews: some View {
        _24Animation()
    }
}
