//
//  ContentView.swift
//  TextBootCamp
//
//  Created by jin on 4/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!".capitalized)
//            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
//            .underline()
//            .underline(true, color: Color.red)
//            .italic()
//            .strikethrough(true, color: Color.green)
        // method, 구체적인 사이즈를 원한다면
//            .font(.system(size: 24, weight: .semibold, design: .serif))
//            .baselineOffset(10)
//            .kerning(10)
            .foregroundColor(.blue)
            .multilineTextAlignment(.leading)
            .frame(width: 200, height: 100, alignment: .center)
        // 폰트가 10%까지 줄어들 수 있게 함
            .minimumScaleFactor(0.1)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
