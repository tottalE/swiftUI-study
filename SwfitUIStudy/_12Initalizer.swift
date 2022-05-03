//
//  12Initalizer.swift
//  SwfitUIStudy
//
//  Created by jin on 5/4/22.
//

import SwiftUI

struct _2Initalizer: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    //이게 아래의 init statement
    init(count: Int, fruit: Fruit) {
        
        self.count = count
        
//        if title == "Apples" {
//            self.backgroundColor = .red
//        } else {
//            self.backgroundColor = .orange
//        }
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    //enum
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct _2Initalizer_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            _2Initalizer(count: 55, fruit: .apple)
            _2Initalizer(count: 44, fruit: .orange)
        }
    }
}
