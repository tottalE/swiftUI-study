//
//  _26Transition.swift
//  SwfitUIStudy
//
//  Created by jin on 5/6/22.
//

import SwiftUI

struct _26Transition: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                //기본
//                    .transition(.move(edge: .bottom))
//                    .animation(.spring())
                // 트렌지션 여러 종류
//                    .transition(AnyTransition.scale.animation(.easeInOut))
                //
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: AnyTransition.opacity.animation(.easeInOut)
                    ))
                    .animation(.easeInOut)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct _26Transition_Previews: PreviewProvider {
    static var previews: some View {
        _26Transition()
    }
}
