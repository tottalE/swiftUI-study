//
//  _35TextEditor.swift
//  SwfitUIStudy
//
//  Created by jin on 5/12/22.
//

import SwiftUI

struct _35TextEditor: View {
    
    @State var textEditorText: String = "This is the starting text"
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
//                    .foregroundColor(Color.red)
                    .colorMultiply(.gray)
                    .cornerRadius(10)
                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                Text(savedText)
                Spacer()
            }
            .padding()
//            .background(Color.green)
            .navigationTitle("TextEditor BootCamp")
        }
    }
}

struct _35TextEditor_Previews: PreviewProvider {
    static var previews: some View {
        _35TextEditor()
    }
}
