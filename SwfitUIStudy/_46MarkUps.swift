//
//  _46MarkUps.swift
//  SwfitUIStudy
//
//  Created by jin on 5/18/22.
//

import SwiftUI

struct _46MarkUps: View {
    
    // MARK: PROPERTIES
    
    @State var data: [String] = [
        "Apples", "Oranges", "Bananas"
    ]
    @State var showAlert: Bool = false
    
    // MARK: BODY
    
    //     Working copy - things to do
    /*
     1) Fix title
     2) Fix alert
     3) Fix something
     */
    
    var body: some View {
        NavigationView { // START: NAV
            ZStack {
                // background
                Color.red.ignoresSafeArea()
                
                // foreground
                foregroundLayer
                .navigationTitle("Documation Bootcamp")
                .navigationBarItems(trailing: Button("Alert", action: {
                    showAlert.toggle()
                }))
                .alert(isPresented: $showAlert) {
                    getAlert(text: "This is the alert")
            }
            }
        }// END: NAV
    }
    /// This is the foreground layer that holds a scrollView
    private var foregroundLayer: some View {
        ScrollView { // START: SCROLLV
            Text("Hello")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        } // END: SCROLLV
    }
    
    // MARK: FUNCTIONS
    
    /// Gets an alert with a specified title.
    ///
    ///This function creates and returns an alert immediately. The alert will have a title based on the text parameter but it will not have a message.
    ///```
    ///getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    ///```
    ///
    /// - Warning: There is no additional message in this Alert.
    /// - Parameter text: this is the title for the alert/
    /// - Returns: Returns an alert with a title.
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

    // MARK: PREVIEW

struct _46MarkUps_Previews: PreviewProvider {
    static var previews: some View {
        _46MarkUps()
    }
}
