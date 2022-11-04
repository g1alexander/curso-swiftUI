//
//  ImageView.swift
//  HelloWorld
//
//  Created by g1alexander on 11/2/22.
//

import SwiftUI

struct ImageView: View{
    var body: some View {
        
        VStack {
            Text("siuuuu")
            Image("me").resizable()
                .padding(50)
                .frame(width: 300, height: 300)
                .background(Color.gray)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.blue, lineWidth: 4))
            .shadow(color: Color.gray, radius: 10)
            
            Image(systemName: "rectangle.portrait.and.arrow.right.fill").resizable()
                .padding(50)
                .frame(width: 300, height: 300)
                .background(Color.gray)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.blue, lineWidth: 4))
                .shadow(color: Color.gray, radius: 10)
                .foregroundColor(Color.blue)
        }
            
    }
}


struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
