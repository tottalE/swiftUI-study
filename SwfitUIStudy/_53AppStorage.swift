//
//  _53AppStorage.swift
//  SwfitUIStudy
//
//  Created by jin on 5/27/22.
//

import SwiftUI

struct _53AppStorage: View {
    
//    @State var currentUserName: String?
    @AppStorage("name") var currentUserName: String?
    // 다른 view에서도 접근 가능
    
    var body: some View {
        
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add name here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            
            Button("Save".uppercased()) {
                let name = "Emily"
                currentUserName = name
//                UserDefaults.standard.set(name, forKey: "name")
            }
        }
        .onAppear {
//            currentUserName = UserDefaults.standard.string(forKey: "name")
        }
    }
}

struct _53AppStorage_Previews: PreviewProvider {
    static var previews: some View {
        _53AppStorage()
    }
}
