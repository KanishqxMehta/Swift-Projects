//
//  ContentView.swift
//  pick-and-pal
//
//  Created by Kanishq Mehta on 30/05/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Query private var names: [NameList]
    @Environment(\.modelContext) private var context
    @State private var nameToAdd = ""
    @State private var pickedName = ""
    @State private var shouldRemovePickedName = false
    @State private var savedList: [NameList] = []
    
    var body: some View {
        VStack {
            
            VStack{
                Image(systemName: "person.3.sequence.fill")
                    .foregroundStyle(.tint)
                    .symbolRenderingMode(.hierarchical)
                 Text("pick-and-Pal")
            }
            .font(.title)
            .bold()
            .padding(.bottom)

            HStack {
                Button("Save List"){
                    savedList = names
                }
                .padding(.horizontal)
                
                Button("Load List"){
                    names = savedList
                }
            }
            .buttonStyle(.bordered)
            
            Divider()
            
            Text(pickedName.isEmpty ? " " : pickedName)
                .font(.title2)
                .bold()
                .foregroundStyle(.tint)
            
            List{
                ForEach(names, id: \.self){ name in
                    Text(name.name)
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 8))
            
            TextField("Add Name", text: $nameToAdd)
                .autocorrectionDisabled()
                .onSubmit {
                    if !nameToAdd.isEmpty && !names.contains(nameToAdd) {
                        names.append(nameToAdd.trimmingCharacters(in: .whitespaces))
                        nameToAdd = ""
                    }
                    else{
                        
                    }
                }
            
            Divider()

            Toggle("Remove Picked Name", isOn: $shouldRemovePickedName)
            
            
            
            Button {
                if let randomName = names.randomElement() {
                    pickedName = randomName
                    
                    if shouldRemovePickedName {
                        names.removeAll{ name in
                            return (name == randomName)
                        }
                    }
                }
                
                else {
                    pickedName = ""
                }
                
            } label: {
                Text("Pick Random Name")
                    .padding(.vertical, 8)
                    .padding(.horizontal, 16)
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
                    }
        .padding()
    }
}

#Preview {
    ContentView(savedList: [])
        .modelContainer(for: NameList.self, inMemory: true)
}
