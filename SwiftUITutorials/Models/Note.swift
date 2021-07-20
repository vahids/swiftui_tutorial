//
//  Note.swift
//  SwiftUITutorials
//
//  Created by Vahid Sayad on 7/20/21.
//

import Foundation

struct Note {
    var id: UUID
    var note: String
    var dateTime: Date
    
    var getDate: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .medium
        return formatter.string(from: dateTime)
    }
}
