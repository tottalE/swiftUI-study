//
//  03Colors.swift
//  SwfitUIStudy
//
//  Created by jin on 4/26/22.
//

import SwiftUI

struct _3Colors: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color.primary
                //Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
        //secondary - background색깔로 보여줄 수 있음
            .frame(width: 300, height: 200)
            //.shadow(radius: 10)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: 20, y: 20)
    }
}

struct _3Colors_Previews: PreviewProvider {
    static var previews: some View {
        _3Colors()
            
            
            
    }
}
