//
//  _48IfLetGuard.swift
//  SwfitUIStudy
//
//  Created by jin on 5/24/22.
//

import SwiftUI

struct _48IfLetGuard: View {
    
    @State var currentUserID: String? = "Testuser123"
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Here we are practicing safe coding.")
                
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                Text(displayText!)
                    .font(.title)
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData()
            }
        }
    }
    
    func loadData() {
        
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! User id is: \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Error. There is no User ID!"
        }
        
    }
    
    func loadData2() {
        
        guard let userID = currentUserID else {
            displayText = "Error. There is no User ID!"
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data! User id is: \(userID)"
            isLoading = false
        }
    }
}

struct _48IfLetGuard_Previews: PreviewProvider {
    static var previews: some View {
        _48IfLetGuard()
    }
}
