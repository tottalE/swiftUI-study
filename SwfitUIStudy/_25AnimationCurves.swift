//
//  _25AnimationCurves.swift
//  SwfitUIStudy
//
//  Created by jin on 5/6/22.
//

import SwiftUI

struct _25AnimationCurves: View {
    
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
            //same speed
                .animation(Animation.linear(duration: timing), value: isAnimating)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
            // slow fast
                .animation(Animation.easeIn(duration: timing), value: isAnimating)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
            // slow fast slow
                .animation(Animation.easeInOut(duration: timing), value: isAnimating)
            
            RoundedRectangle(cornerRadius: 20)
            // fast slow
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.easeOut(duration: timing), value: isAnimating)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(.spring())
                .animation(.spring(
                    response: 1.0,
                    dampingFraction: 0.5,
                    blendDuration: 1.0))
        }
    }
}

struct _25AnimationCurves_Previews: PreviewProvider {
    static var previews: some View {
        _25AnimationCurves()
    }
}
