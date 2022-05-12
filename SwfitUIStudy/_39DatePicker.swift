//
//  _39DatePicker.swift
//  SwfitUIStudy
//
//  Created by jin on 5/12/22.
//

import SwiftUI

struct _39DatePicker: View {
    
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
//        DatePicker("Select a Date", selection: $selectedDate)
//            .accentColor(Color.red)
//            .datePickerStyle(WheelDatePickerStyle())
        
//        DatePicker("Select a Date", selection: $selectedDate, displayedComponents: [.date])
        
        VStack {
            Text("Selceted date is:".uppercased())
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            
            DatePicker("Select a Date", selection: $selectedDate, in: startingDate ... endingDate, displayedComponents: [.date])
        }
    }
}

struct _39DatePicker_Previews: PreviewProvider {
    static var previews: some View {
        _39DatePicker()
    }
}
