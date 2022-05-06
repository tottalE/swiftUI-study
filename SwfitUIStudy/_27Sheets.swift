//
//  _27Sheets.swift
//  SwfitUIStudy
//
//  Created by jin on 5/6/22.
//

import SwiftUI

struct _27Sheets: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
            
            // 전제 커버
//            .fullScreenCover(isPresented: $showSheet, content: {
//                SecondScreen()
//            })
            
            // 부분 커버
            .sheet(isPresented: $showSheet, content: {
                // 조건문 넣으면 안됨!
                SecondScreen()
            })
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
        }
    }
}

struct _27Sheets_Previews: PreviewProvider {
    static var previews: some View {
        _27Sheets()
    }
}
