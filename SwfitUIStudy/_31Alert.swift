//
//  _31Alert.swift
//  SwfitUIStudy
//
//  Created by jin on 5/10/22.
//

import SwiftUI

struct _31Alert: View {
    
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
    //@State var alertTitle: String = ""
    //@State var alertMessage: String = ""
    @State var backgroundColor: Color = Color.yellow
    
    // 제일 많이 쓰는 방법
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            VStack {
                Button("Click here 1") {
                    alertType = .error
//                    alertTitle = "ERROR"
//                    alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }
                Button("Click here 2") {
                    alertType = .success
//                    alertTitle = "SUCCESS"
//                    alertMessage = "Successfully uploaded video 🥰"
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert) {
                getAlert()
            }
        }
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .error:
            return Alert(title: Text("There was an error"))
        case .success:
            return Alert(title: Text("This was an success"), message: nil, dismissButton: .default(Text("OK"), action: {
                backgroundColor = .green
            }))
        default:
            return Alert(title: Text("ERROR"))
        }
        
        // 직접 변수 변경
//        return Alert(
//            title: Text(alertTitle),
//            message: Text(alertMessage),
//            dismissButton: .default(Text("OK")))
        
        //색변경
//        Alert(
//            title: Text("This is the title"),
//            message: Text("here we will describe error"),
//            primaryButton: .destructive(Text("DELETE"), action: {
//                backgroundColor = .red
//            }),
//            secondaryButton: .cancel())
    }
}

struct _31Alert_Previews: PreviewProvider {
    static var previews: some View {
        _31Alert()
    }
}
