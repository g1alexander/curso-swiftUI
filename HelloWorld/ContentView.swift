//
//  ContentView.swift
//  HelloWorld
//
//  Created by g1alexander on 11/1/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack (alignment: .leading, spacing: 20){
            Text("Hola mundo").padding()
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .padding()
            
            Spacer()
            
            ZStack{
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.gray)
                    .padding()
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.green)
                    .padding(40)
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.blue)
                    .padding(60)
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.red)
                    .padding(80)
            }
            
            Spacer()
            
            HStack{
                Text("hey bro")
                    .padding()
                    .background(Color.gray)
                
                Spacer()
                
                Text("siiiuuuu")
                    .padding()
                    .background(Color.gray)
            }.padding()
            
            
            Text("")
            Text("")
            Text("")
            Text("")
            
            // en un vStack solo puedes devolver 10 vistas
            
        }.padding().background(Color.yellow)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
