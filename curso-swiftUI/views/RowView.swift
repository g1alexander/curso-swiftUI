//
//  RowView.swift
//  curso-swiftUI
//
//  Created by g1alexander on 11/4/22.
//

import SwiftUI

struct RowView: View {
    var programmer: Programmer
    
    var body: some View {
        
        HStack{
            programmer.avatar
                .resizable()
                .frame(width: 40, height: 40)
                .padding(10)
            VStack(alignment: .leading){
                Text(programmer.name)
                    .font(.title)
                Text(programmer.languages)
                    .font(.subheadline)
            }
            
            Spacer()
            
            if programmer.isFavorite{
                Image(systemName: "star.fill").foregroundColor(Color.yellow)
            }
            
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(programmer: Programmer(id: 1, name: "Alexander", languages: "Swift, TS", avatar: Image(systemName: "person.fill"), isFavorite: false))
    }
}
