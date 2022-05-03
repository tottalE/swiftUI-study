//
//  _14ScrollView.swift
//  SwfitUIStudy
//
//  Created by jin on 5/4/22.
//

import SwiftUI

struct _14ScrollView: View {
    var body: some View {
//        ScrollView(.horizontal, showsIndicators: true) {
//            HStack {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 300, height: 300)
//                }
//            }
//        }
//
        ScrollView {
            LazyVStack {
                ForEach(0..<100) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius:10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

struct _14ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        _14ScrollView()
    }
}
