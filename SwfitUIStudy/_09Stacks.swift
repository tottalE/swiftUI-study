//
//  09Stacks.swift
//  SwfitUIStudy
//
//  Created by jin on 4/29/22.
//

import SwiftUI

struct _9Stacks: View {
    // Vstacks -> Vertical
    // Hstacks -> Horizontal
    // Zstacks -> zIndex (back to front)
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
        }
        
        //rid spaces
        HStack(alignment: .top, spacing: 0) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 150, height: 150)
            
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
        }
        
        ZStack(alignment: .top) {
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 350, height: 500)
            
            VStack(alignment: .leading, spacing: 30) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
                
                HStack(alignment: .bottom) {
                    Rectangle()
                        .fill(Color.purple)
                        .frame(width: 50, height: 50)
                    
                    Rectangle()
                        .fill(Color.pink)
                        .frame(width: 100, height: 100)
                    
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 25, height: 25)
                }
                .background(Color.white)
            }
            .background(Color.black)
        }
        
        // real example
        VStack(alignment: .center, spacing: 20) {
            
            Text("5")
                .font(.largeTitle)
                .underline()
            
            Text("Items in your cart")
                .font(.caption)
                .foregroundColor(.gray)
            
        }
        
        VStack {
            
            ZStack{
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
                
            }
            
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
        
    }
}

struct _9Stacks_Previews: PreviewProvider {
    static var previews: some View {
        _9Stacks()
    }
}
