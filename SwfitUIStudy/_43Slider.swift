//
//  _43Slider.swift
//  SwfitUIStudy
//
//  Created by jin on 5/15/22.
//

import SwiftUI

struct _43Slider: View {
    
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Rating:")
            Text(
                String(format: "%.0f", sliderValue)
            )
            .foregroundColor(color)
//            Slider(value: $sliderValue)
//            Slider(value: $sliderValue, in: 0...5)
//            Slider(value: $sliderValue, in: 1...5 , step: 0.5)
            Slider(value: $sliderValue,
                   in: 1...5,
                   step: 1.0,
                   onEditingChanged: {_ in
                color = .green
            },
                   minimumValueLabel: Text("1")
                .font(.largeTitle)
                   ,
                   maximumValueLabel: Text("5"),
                   label: {
                Text("Title")
            })
            .padding()
                .accentColor(.red)
        }
    }
}

struct _43Slider_Previews: PreviewProvider {
    static var previews: some View {
        _43Slider()
    }
}
