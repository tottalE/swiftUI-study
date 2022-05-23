//
//  _47Appear.swift
//  SwfitUIStudy
//
//  Created by jin on 5/23/22.
//

import SwiftUI

struct _47Appear: View {
    
    @State var myText: String = "Start test."
    @State var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is the new text!"
                }
            })
            // clean 할 때
            .onDisappear(perform: {
                myText = "Ending text."
            })
            .navigationTitle("On Appear: \(count)")
        }
    }
}

struct _47Appear_Previews: PreviewProvider {
    static var previews: some View {
        _47Appear()
    }
}
