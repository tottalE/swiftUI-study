//
//  11Spacer.swift
//  SwfitUIStudy
//
//  Created by jin on 5/2/22.
//

import SwiftUI

struct _1Spacer: View {
    var body: some View {
        HStack(spacing: 0) {
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .frame(width: 50, height: 50)
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
        }
        .background(Color.blue)
    }
}

struct _1Spacer_Previews: PreviewProvider {
    static var previews: some View {
        _1Spacer()
    }
}
