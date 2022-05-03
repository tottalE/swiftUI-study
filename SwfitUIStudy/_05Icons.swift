//
//  05Icons.swift
//  SwfitUIStudy
//
//  Created by jin on 4/27/22.
//

import SwiftUI

struct _5Icons: View {
    var body: some View {
        Image(systemName: "square.and.arrow.up.trianglebadge.exclamationmark")
            .renderingMode(.original)
            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFit()
            .scaledToFill()
//            .font(.largeTitle)
//            .font(.system(size: 200))
//            .foregroundColor(.green)
            .frame(width: 300, height: 300)
//            .clipped() // 유용함
    }
}

struct _5Icons_Previews: PreviewProvider {
    static var previews: some View {
        _5Icons()
    }
}
