//
//  ListView.swift
//  curso-swiftUI
//
//  Created by g1alexander on 11/4/22.
//

import SwiftUI

final class ProgrammersModelData : ObservableObject {
    @Published var programmers = [
        Programmer(id: 0, name: "Alexander", languages: "Swift, TS", avatar: Image(systemName: "person"), isFavorite: false),
        Programmer(id: 1, name: "Andres", languages: "Java, kotlin", avatar: Image(systemName: "person.fill"), isFavorite: false),
        Programmer(id: 2, name: "Alfonso", languages: "php, vue", avatar: Image(systemName: "person.fill"), isFavorite: true),
        Programmer(id: 3, name: "Checa", languages: "go, rust", avatar: Image(systemName: "person.fill"), isFavorite: false),
        Programmer(id: 4, name: "Vane", languages: "cobol, python", avatar: Image(systemName: "person.fill"), isFavorite: true)
    ]
}



struct ListView: View {
    
    @EnvironmentObject var programmersModelData: ProgrammersModelData
    
    @State private var showFavorite = false
    
    private var filteredProgrammers : [Programmer] {
        return programmersModelData.programmers.filter {
            programmer in return !showFavorite || programmer.isFavorite
        }
    }
    
    var body: some View {
        NavigationView{
            
            VStack{
                Toggle(isOn: $showFavorite) {
                    Text("favoritos")
                }.padding()
            
            
                

                List(filteredProgrammers, id: \.id){ programmer in
                    NavigationLink(destination: ListDetailView(programmer: programmer, favorite: $programmersModelData.programmers[programmer.id].isFavorite)){
                        RowView(programmer: programmer)
                    }
                }
                
            }.navigationTitle("Programmers")
        }
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView().environmentObject(ProgrammersModelData())
    }
}
