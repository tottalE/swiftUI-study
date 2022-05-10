//
//  _32ActionSheet.swift
//  SwfitUIStudy
//
//  Created by jin on 5/10/22.
//

import SwiftUI

struct _32ActionSheet: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case inMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button(action: {
                    actionSheetOption = .isOtherPost
                    showActionSheet.toggle()
                }) {
                    Image(systemName: "ellipsis")
                }
                .accentColor(.primary)
                
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
            
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
        
//        let button1: ActionSheet.Button = .default(Text("DEFAULT"))
//        let button2: ActionSheet.Button = .destructive(Text("DESTRUCTIVE"))
//        let button3: ActionSheet.Button = .cancel()
//
//        return ActionSheet(
//            title: Text("This is the title!"),
//            message: Text("This is the message"),
//            buttons: [button1, button1, button1, button2, button3]
        
        
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            
        }
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            
        }
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            
        }
        let cancelButton: ActionSheet.Button = .cancel()
        let title = Text("What Would You Like To Do?")
        
        switch actionSheetOption {
        case .inMyPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons:  [shareButton, reportButton, deleteButton, cancelButton])
        case .isOtherPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, cancelButton])
        }
    }
}

struct _32ActionSheet_Previews: PreviewProvider {
    static var previews: some View {
        _32ActionSheet()
    }
}
