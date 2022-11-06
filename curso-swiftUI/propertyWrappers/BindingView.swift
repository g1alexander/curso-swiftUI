//
//  BindingView.swift
//  curso-swiftUI
//
//  Created by g1alexander on 11/6/22.
//

import SwiftUI

struct BindingView: View {
    // uso @Binding: cuando el variable que declaremos con esta caracteristica venga de otra vista y queremos leer y estribirla
    @Binding var value: Int
    @ObservedObject  var user : UserData // igual que binding solo que para variable complejas
    
    var body: some View {
        VStack{
            Button("Suma 2"){
                value += 2
            }
            
            Button("actualizar"){
                user.name = "siuuuu"
                user.age = 12
            }
            
            NavigationLink("Ir a Environment", destination: EnvironmentView())
        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView(value: .constant(0), user: UserData())
    }
}
