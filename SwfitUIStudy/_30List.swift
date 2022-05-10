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
    @State var veggies: [String] = [
        "tomato", "potato", "carrot"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .font(.caption)
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
                    .onDelete(perform: delete(indextSet:))
//                    .onMove { indices, newOffset in
//                        move(indices: indices, newOffset: newOffset)
//                    }
                    .onMove(perform: move)
                    .listRowBackground(Color.pink)
                } header: {
                    HStack {
                        Text("FRUITS")
                        Image(systemName: "flame.fill")
                    }
                    .font(.headline)
                    .foregroundColor(Color.orange)
                }
                
                Section(content: {
                    ForEach(veggies, id:\.self) { veggies in
                        Text(veggies.capitalized)
                    }
                }, header: {Text("VEGGIES")})
            }
            .accentColor(.purple)
            .listStyle(SidebarListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(), trailing: addButton)
        }
        .accentColor(.red)
    }
    
    var addButton: some View {
        Button("Add", action: {
            add()
        })
    }
    
    func delete(indextSet: IndexSet) {
        fruits.remove(atOffsets: indextSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}

struct _30List_Previews: PreviewProvider {
    static var previews: some View {
        _30List()
    }
}
