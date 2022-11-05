//
//  ListDetailView.swift
//  curso-swiftUI
//
//  Created by g1alexander on 11/4/22.
//

import SwiftUI

struct ListDetailView: View {
    var programmer: Programmer
    
    var body: some View {
        VStack{
            programmer.avatar.resizable()
                .frame(width: 200, height: 200)
                .background(Color.gray)
                .clipShape(Circle())
                .overlay(Circle()
                .stroke(Color.black, lineWidth: 4))
            
            Text(programmer.name).font(.largeTitle)
            Text(programmer.languages).font(.title3)
            
            Spacer()
        }
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(programmer: Programmer(id: 1, name: "Alexander", languages: "Swift, TS", avatar: Image(systemName: "person.fill")))
    }
}
