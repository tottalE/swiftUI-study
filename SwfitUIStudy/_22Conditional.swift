//
//  _22Conditional.swift
//  SwfitUIStudy
//
//  Created by jin on 5/5/22.
//

import SwiftUI

struct _22Conditional: View {
    
    @State var ShowCircle: Bool = false
    @State var ShowRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            Button("IS LOADING: \(isLoading.description)"){
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            }
            
//            Button("Circle: \(ShowCircle.description)") {
//                ShowCircle.toggle()
//            }
//
//            Button("Rectangle: \(ShowRectangle.description)") {
//                ShowRectangle.toggle()
//            }
//
//            if ShowCircle {
//                Circle()
//                    .frame(width: 100, height: 100)
//            }
//
//            if ShowRectangle{
//                Rectangle()
//                    .frame(width:100, height: 100)
//            }
//
//            if ShowCircle || ShowRectangle {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .frame(width: 200, height: 100)
//            }
            
            Spacer()
        }
    }
}

struct _22Conditional_Previews: PreviewProvider {
    static var previews: some View {
        _22Conditional()
    }
}
