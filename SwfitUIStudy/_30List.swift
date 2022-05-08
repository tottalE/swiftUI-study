//
//  _30List.swift
//  SwfitUIStudy
//
//  Created by jin on 5/8/22.
//

import SwiftUI

struct _30List: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform: delete(indextSet:))
                    .onMove { indices, newOffset in
                        fruits
                    }
                } header: {
                    Text("FRUITS")
                }
            }
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton())
        }
        
    }
    
    func delete(indextSet: IndexSet) {
        fruits.remove(atOffsets: indextSet)
    }
}

struct _30List_Previews: PreviewProvider {
    static var previews: some View {
        _30List()
    }
}
