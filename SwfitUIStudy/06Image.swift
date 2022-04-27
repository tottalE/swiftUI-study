//
//  06Image.swift
//  SwfitUIStudy
//
//  Created by jin on 4/27/22.
//

import SwiftUI

struct _6Image: View {
    var body: some View {
        Image("tottal")
//            .renderingMode(.template) // custom icon에 쓰임 혹은 asset에서 설정 가능함
            .resizable()
//            .aspectRatio(contentMode: .fill)
            .scaledToFill()
            .frame(width: 300, height: 200)
            .foregroundColor(.red)
//            .clipped()
//            .cornerRadius(150)
//            .clipShape(
//                Circle()
//                RoundedRectangle(cornerRadius: 25)
//                Ellipse()
//            )
    }
}

struct _6Image_Previews: PreviewProvider {
    static var previews: some View {
        _6Image()
    }
}
