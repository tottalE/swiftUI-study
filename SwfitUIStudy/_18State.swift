//
//  _18State.swift
//  SwfitUIStudy
//
//  Created by jin on 5/4/22.
//

import SwiftUI

struct _18State: View {
    
    // View watches
    @State var backGroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            //background
            backGroundColor
                .edgesIgnoringSafeArea(.all)
            
            //content
            VStack(spacing: 20){
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("BUTTON 1") {
                        backGroundColor = .red
                        myTitle = "Button 1 was pressed"
                        count += 1
                    }
                    
                    Button("BUTTON 2") {
                        backGroundColor = .purple
                        myTitle = "Button 2 was pressed"
                        count += 1
                    }
                }
            }.foregroundColor(.white)
        }
    }
}

struct _18State_Previews: PreviewProvider {
    static var previews: some View {
        _18State()
    }
}
