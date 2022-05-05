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
            Spacer(minLength: nil)
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
        }
        .background(Color.yellow)
//        .padding(.horizontal, 200)
        .background(Color.green)
        
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                Spacer()
                    .frame(height: 10)
//                    .background(Color.orange)
                Image(systemName: "gear")
            }
//            .frame(height: 10)
            .font(.title)
//            .background(Color.yellow)
            .padding(.horizontal)
//            .background(Color.blue)
            
            Spacer()
                .frame(width: 10)
//                .background(Color.orange)
            
            Rectangle()
                .frame(height: 55)
        }
//        .background(Color.yellow)
        
    }
}

struct _1Spacer_Previews: PreviewProvider {
    static var previews: some View {
        _1Spacer()
    }
}
