//
//  shapes.swift
//  TextBootCamp
//
//  Created by jin on 4/12/22.
//

import SwiftUI

struct shapes: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: 10)
//            .fill(Color.blue)
//            .foregroundColor(.pink)
//            .stroke()
//            .stroke(Color.red)
//            .stroke(Color.blue,lineWidth: 30)
//            .stroke(Color.green, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [30]))
//            .trim(from: 0.2, to: 1.0)
//            .stroke(Color.purple, lineWidth: 50)
            .frame(width: 300, height: 200)
    }
}

struct shapes_Previews: PreviewProvider {
    static var previews: some View {
        shapes()
    }
}
