//
//  _20ExtractSubViews.swift
//  SwfitUIStudy
//
//  Created by jin on 5/5/22.
//

import SwiftUI

struct _20ExtractSubViews: View {
    var body: some View {
        ZStack {
            Color(.blue).edgesIgnoringSafeArea(.all)
            
            contentLayer
            
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "Apple", count: 1, color: .red)
            MyItem(title: "Oranges", count: 10, color: .orange)
            MyItem(title: "Bananas", count: 1, color: .yellow)
        }
    }
}

struct _20ExtractSubViews_Previews: PreviewProvider {
    static var previews: some View {
        _20ExtractSubViews()
    }
}

// 새 파일을 만드는 것과 같음
struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
