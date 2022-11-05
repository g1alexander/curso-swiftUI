//
//  ListDetailView.swift
//  curso-swiftUI
//
//  Created by g1alexander on 11/4/22.
//

import SwiftUI

struct ListDetailView: View {
    var programmer: Programmer
    
    @Binding var favorite: Bool
    
    var body: some View {
        VStack{
            programmer.avatar.resizable()
                .frame(width: 200, height: 200)
                .background(Color.gray)
                .clipShape(Circle())
                .overlay(Circle()
                .stroke(Color.black, lineWidth: 4))
            
            HStack{
                Text(programmer.name).font(.largeTitle)
                Button(){
                    favorite.toggle()
                } label: {
                    if favorite {
                        Image(systemName: "star.fill").foregroundColor(Color.yellow)
                    }else{
                        Image(systemName: "star").foregroundColor(Color.black)
                    }
                    
                }
            }
            Text(programmer.languages).font(.title3)
            
            Spacer()
        }
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(programmer:
                        Programmer(id: 1, name: "Alexander", languages: "Swift, TS", avatar: Image(systemName: "person.fill"), isFavorite: false), favorite: .constant(false))
    }
}
