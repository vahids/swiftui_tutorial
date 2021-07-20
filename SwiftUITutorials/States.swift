//
//  States.swift
//  SwiftUITutorials
//
//  Created by Vahid Sayad on 7/20/21.
//

import SwiftUI

struct States: View {
    
    @State private var items = [Note]()
    @State private var entredText: String = ""
    
    var body: some View {
        VStack {
            HStack {
            TextField("Type New Note...", text: $entredText)
                .frame(height: 35)
                .padding(EdgeInsets(top: 2, leading: 8, bottom: 2, trailing: 8))
                .border(Color.black)
                
                Button(action: {
                    let new = Note(id: UUID(), note: self.entredText, dateTime: Date())
                    items.append(new)
                    self.entredText = ""
                }, label: {
                    Text("+")
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                        .bold()
                })
            }.padding()
            
            List {
                ForEach(items, id:\.id) { item in
                    NoteCell(note: item)
                }
            }
        }
    }
}

struct States_Previews: PreviewProvider {
    static var previews: some View {
        States()
    }
}


struct NoteCell: View {
    var note: Note
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(note.note)
                    .font(.body)
                    .bold()
                    .padding(.bottom, 8)
                HStack {
                    Spacer()
                    Text(note.getDate)
                        .font(.subheadline)
                }
            }.padding(EdgeInsets(top: 4, leading: 16, bottom: 4, trailing: 16))
            Spacer()
        }
    }
}
