//
//  Friend.swift
//  Birthdays
//
//  Created by Kanishq Mehta on 06/06/24.
//

import Foundation
import SwiftData

@Model

class Friend {
    let name: String
    let birthday: Date
    let notes: String
    
    init(name: String, birthday: Date, notes: String) {
        self.name = name
        self.birthday = birthday
        self.notes = notes
    }
    
    var isBirthdayToday: Bool {
        Calendar.current.isDateInToday(birthday)
    }
}

