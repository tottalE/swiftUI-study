//
//  _42Stepper.swift
//  SwfitUIStudy
//
//  Created by jin on 5/14/22.
//

import SwiftUI

struct _42Stepper: View {
    
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding()
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: widthIncrement, height: 100)
            
            Stepper("Stepper2") {
                incrementWidth(amount: 10)
            } onDecrement: {
                incrementWidth(amount: -10)
            }

        }
    }
    
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
}

struct _42Stepper_Previews: PreviewProvider {
    static var previews: some View {
        _42Stepper()
    }
}
