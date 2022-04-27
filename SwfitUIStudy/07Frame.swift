//
//  07Frame.swift
//  SwfitUIStudy
//
//  Created by jin on 4/27/22.
//

import SwiftUI

struct _7Frame: View {
    var body: some View {
//        Text("Hello, World!")
//            .background(Color.green)
//            .frame(width: 300, height: 300, alignment: .leading)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading) //완전히 왼쪽으로 붙이는 법
//            .background(Color.red)
        
        Text("Hello world")
            .background(Color.red)
            .frame(height: 100)
            .background(Color.orange)
            .frame(width: 150)
            .background(Color.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.pink)
            .frame(height:400)
            .background(Color.green)
            .frame(maxHeight: .infinity)
            .background(Color.yellow)
    }
}

struct _7Frame_Previews: PreviewProvider {
    static var previews: some View {
        _7Frame()
    }
}
