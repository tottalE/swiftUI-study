//
//  _13ForEachLoops.swift
//  SwfitUIStudy
//
//  Created by jin on 5/4/22.
//

import SwiftUI

struct _13ForEachLoops: View {
    
    let data: [String] = ["Hi", "Hello", "Hey everyone"]
    let myString: String = "Hello"
    
    var body: some View {
//        VStack {
//            ForEach(0..<10) { index in
//                HStack{
//                    Circle()
//                        .frame(width: 30, height: 30)
//                    Text("Index is: \(index)")
//                }
//            }
//        }
        
        VStack {
            ForEach(data.indices) {index  in
                Text("\(data[index]): \(index)")
            }
        }
    }
}

struct _13ForEachLoops_Previews: PreviewProvider {
    static var previews: some View {
        _13ForEachLoops()
    }
}
