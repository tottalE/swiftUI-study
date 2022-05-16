//
//  _44TabView.swift
//  SwfitUIStudy
//
//  Created by jin on 5/16/22.
//

import SwiftUI

struct _44TabView: View {
    
    @State var selectedTab: Int = 2
    let icons : [String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    ]
    
    var body: some View {
//            TabView(selection: $selectedTab) {
//                HomeView(selectedTab: $selectedTab)
//                    .tabItem{
//                        Image(systemName: "house.fill")
//                        Text("Home")
//                    }
//                    .tag(0)
//
//                Text("Browse Tab")
//                    .tabItem {
//                        Image(systemName: "globe")
//                        Text("Browse")
//                    }
//                    .tag(1)
//
//                Text("Profile Tab")
//                    .tabItem {
//                        Image(systemName: "person.fill")
//                        Text("Profile")
//                    }
//                    .tag(2)
//            }
        
        TabView {
            ForEach(icons, id:\.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
        }
        .background(
            RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: 5, endRadius: 300)
        )
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
    }
}

struct _44TabView_Previews: PreviewProvider {
    static var previews: some View {
        _44TabView()
    }
}

struct HomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                
                Button {
                    selectedTab = 2
                } label: {
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.red)
                        .cornerRadius(10)
                        .accentColor(.white)
                }
            }

        }
        
    }
}
