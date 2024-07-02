//
//  ContentView.swift
//  Birthdays
//
//  Created by Kanishq Mehta on 06/06/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    
    @Query(sort: \Friend.name) private var friends: [Friend]
    @Environment(\.modelContext) private var context
    
    @State private var newName = ""
    @State private var newDate = Date.now
    @State private var newNote = ""
    
    var body: some View {
        NavigationStack{
            VStack {
                List(friends) { friend in
                    VStack {
                        HStack {
                            
                            if friend.isBirthdayToday {
                                Image(systemName: "birthday.cake")
                            }
                            
                            Text(friend.name)
                                .bold(friend.isBirthdayToday)
                            Spacer()
                            

                            Text(friend.birthday, format: .dateTime.month(.wide).day().year())
                        }
                        Text(friend.notes)
                            .font(.caption2)
                            .padding(.top, 3)
                    }
                }
            }
            .navigationTitle("Birthdays")
            .safeAreaInset(edge: .bottom) {
                VStack(alignment: .center, spacing: 20) {
                    Text("New Birthday")
                        .font(.headline)
                    DatePicker(selection: $newDate, in: Date.distantPast...Date.now, displayedComponents: .date){
                        TextField("Name", text: $newName)
                            .textFieldStyle(.roundedBorder)
                        
                        TextField("Notes", text: $newNote)
                            .textFieldStyle(.roundedBorder)

                        
                    }
                    Button("Save"){
                        let newFriend = Friend(name: newName, birthday: newDate, notes: newNote)
                        if (!newFriend.name.trimmingCharacters(in: .whitespaces).isEmpty){
                            context.insert(newFriend)
                            newName = ""
                            newNote = ""
                        }
                    }
                    .bold()
                }
                .padding()
                .background(.bar)
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Friend.self, inMemory: true)
}
