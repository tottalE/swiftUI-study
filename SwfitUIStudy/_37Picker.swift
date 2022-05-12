//
//  _37Picker.swift
//  SwfitUIStudy
//
//  Created by jin on 5/12/22.
//

import SwiftUI

struct _37Picker: View {
    
    @State var selection: String = "1"
    
    var body: some View {
//        VStack {
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//            Picker(
//                selection: $selection,
//                label: Text("Picker"),
//                content: {
////                    Text("1").tag("1")
////                    Text("2").tag("2")
////                    Text("3").tag("3")
////                    Text("4").tag("4")
////                    Text("5").tag("5")
////                    Text("6").tag("6")
////                    Text("7").tag("7")
//                    ForEach(18..<100) { number in
//                        Text("\(number)")
//                            .font(.headline)
//                            .foregroundColor(.red)
//                            .tag("\(number)")
//                    }
//            })
////            .background(Color.gray.opacity(0.3))
//        }
//        .pickerStyle(MenuPickerStyle())
        
        VStack {
            Picker(
                selection: $selection,
                label: HStack {
                    Text("Filter:")
                    Text(selection)
                }
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10)
                ,
                content: {
                    Text("1").tag("1")
                    Text("2").tag("2")
                })
            .pickerStyle(MenuPickerStyle())
        }
    }
}

struct _37Picker_Previews: PreviewProvider {
    static var previews: some View {
        _37Picker()
    }
}
