//
//  _36Toggle.swift
//  SwfitUIStudy
//
//  Created by jin on 5/12/22.
//

import SwiftUI

struct _36Toggle: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Status:")
                Text(toggleIsOn ? "On" : "Off")
            }
            .font(.title)
            
            Toggle(
                isOn: $toggleIsOn,
                label: {
                    Text("Change Status")
            })
            .toggleStyle(SwitchToggleStyle(tint: .yellow))
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

struct _36Toggle_Previews: PreviewProvider {
    static var previews: some View {
        _36Toggle()
    }
}
