//
//  ListView.swift
//  curso-swiftUI
//
//  Created by g1alexander on 11/4/22.
//

import SwiftUI

private let programmers = [
    Programmer(id: 1, name: "Alexander", languages: "Swift, TS", avatar: Image(systemName: "person")),
    Programmer(id: 2, name: "Andres", languages: "Java, kotlin", avatar: Image(systemName: "person.fill")),
    Programmer(id: 3, name: "Alfonso", languages: "php, vue", avatar: Image(systemName: "person.fill")),
    Programmer(id: 4, name: "Checa", languages: "go, rust", avatar: Image(systemName: "person.fill")),
    Programmer(id: 5, name: "Vane", languages: "cobol, python", avatar: Image(systemName: "person.fill"))
]

struct ListView: View {
    var body: some View {
        NavigationView{
            List(programmers, id: \.id){ programmer in
                NavigationLink(destination: ListDetailView(programmer: programmer)){
                    RowView(programmer: programmer)
                }
            }
            .navigationTitle("Programmers")
        }
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
