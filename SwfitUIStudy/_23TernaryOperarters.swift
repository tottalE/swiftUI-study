//
//  _23TernaryOperarters.swift
//  SwfitUIStudy
//
//  Created by jin on 5/5/22.
//

import SwiftUI

struct _23TernaryOperarters: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "STARTING STATE" : "ENDING STATE")
            
            // if else로 구현시
//            if isStartingState {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .fill(Color.red)
//                    .frame(width: 200, height: 100)
//            } else {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .fill(Color.blue)
//                    .frame(width: 200, height: 100)
//            }
            
            // Ternary
            RoundedRectangle(cornerRadius: isStartingState ? 25.0 : 0)
                .fill(isStartingState == true ? Color.red : Color.blue)
                .frame(
                    width: isStartingState ? 200 : 50,
                    height: isStartingState ? 400 : 50)
            
            Spacer()
        }
    }
}

struct _23TernaryOperarters_Previews: PreviewProvider {
    static var previews: some View {
        _23TernaryOperarters()
    }
}
