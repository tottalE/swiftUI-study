//
//  _16SafeArea.swift
//  SwfitUIStudy
//
//  Created by jin on 5/4/22.
//

import SwiftUI

struct _16SafeArea: View {
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
            ScrollView{
                VStack {
                    Text("Title goes here")
                        .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    ForEach(0..<10) { index in
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(Color.white)
                            .frame(height: 150)
                            .shadow(radius: 10)
                            .padding(20)
                    }
                }
            }
//            .background(Color.red)
            .ignoresSafeArea()
        }
    }
}

struct _16SafeArea_Previews: PreviewProvider {
    static var previews: some View {
        _16SafeArea()
    }
}
