//
//  _29NavigationVIew.swift
//  SwfitUIStudy
//
//  Created by jin on 5/8/22.
//

import SwiftUI

struct _29NavigationVIew: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                NavigationLink("Hello world",
                               destination: MyOtherScreen())
                
                Text("Hello, World!")
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(.automatic)
            //.navigationBarHidden(true)
            .navigationBarItems(
                leading: HStack {
                    Image(systemName: "person.fill")
                    Image(systemName: "flame.fill")
                },
                trailing:
                    NavigationLink(destination: MyOtherScreen(), label: {
                        Image(systemName: "person.fill")
                    })
                    .accentColor(.red)
            )
        }
        
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen!")
//                .navigationBarHidden(true)
            
            VStack {
                Button("Back Button") {
                    presentationMode.wrappedValue.dismiss()
                }
                
                NavigationLink("Click here", destination: Text("3rd scrren"))
            }
            
            
        }
    }
}

struct _29NavigationVIew_Previews: PreviewProvider {
    static var previews: some View {
        _29NavigationVIew()
    }
}
