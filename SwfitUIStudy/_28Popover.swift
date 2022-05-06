//
//  _28Popover.swift
//  SwfitUIStudy
//
//  Created by jin on 5/6/22.
//

//sheets
//animations
//transitions

import SwiftUI

struct _28Popover: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("BUTTON", action: {
                    showNewScreen.toggle()
                })
                .font(.largeTitle)
                
                Spacer()
            }
            // method1 - sheet
//            .sheet(isPresented: $showNewScreen, content: {
//                NewScreen()
//            })
            
            //method2 - transition - best
//            ZStack {
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }
//            .zIndex(2.0)
            
            //method3 - animation offset
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y:showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .edgesIgnoringSafeArea(.all)
            
            Button {
//                presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }

        }
    }
}

struct _28Popover_Previews: PreviewProvider {
    static var previews: some View {
        _28Popover()
    }
}
