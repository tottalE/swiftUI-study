//
//  _15Grids.swift
//  SwfitUIStudy
//
//  Created by jin on 5/4/22.
//

import SwiftUI

struct _15Grids: View {
    
    let columns: [GridItem] = [
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(75), spacing: nil, alignment: nil),
//        GridItem(.fixed(100), spacing: nil, alignment: nil),
//        GridItem(.fixed(75), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil)
        
        //flexible
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil),
        
        //adaptive
//        GridItem(.adaptive(minimum: 10, maximum: 300), spacing: nil, alignment: nil),
//        GridItem(.adaptive(minimum: 150, maximum: 300), spacing: nil, alignment: nil)
        
        //real world example
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
    ]
    
    var body: some View {
        // 앞 예시에서 사용
//        LazyVGrid(columns: columns) {
//            ForEach(0..<50) { index in
//                Rectangle()
//                    .frame(height: 50)
//            }
//        }
        
        ScrollView {
            //insta
            Rectangle()
                .fill(Color.white)
                .frame(height: 400)
            
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 6,
                      pinnedViews: [.sectionHeaders],
                      content: {
                        Section(header:
                                    Text("Section 1")
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .background(Color.red)
                                    .padding()
                        ) {
                            ForEach(0..<50) { index in
                                Rectangle()
                                    .frame(height: 150)
                            }
                        }
                
                        
                        Section(header:
                                    Text("Section 2")
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .frame(width: .infinity, alignment: .leading)
                                    .background(Color.red)
                                    .padding()
                        ) {
                            ForEach(0..<50) { index in
                                Rectangle()
                                    .fill(.blue)
                                    .frame(height: 150)
                            }
                        }
                    })
            
            
//            LazyVGrid(columns: columns) {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .frame(height: 150)
//                }
//            }
        }
    }
}

struct _15Grids_Previews: PreviewProvider {
    static var previews: some View {
        _15Grids()
    }
}
