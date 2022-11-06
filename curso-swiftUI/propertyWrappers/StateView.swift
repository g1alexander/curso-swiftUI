//
//  StateView.swift
//  curso-swiftUI
//
//  Created by g1alexander on 11/6/22.
//

import SwiftUI


class UserData: ObservableObject { // observo cambios de la class para estar pendiente a cambios solo de variable publicadas
    @Published var name = "Alex"
    @Published var age = 22
}

struct StateView: View {
    // struct son inmutable, por eso se utiliza el manejador de estado
    
    // uso de @State: cuando la variable tenga que modificar el valor y la vista que la define (StateView (vista y struct) inicializa una varible que cambia y es propietario de esa variable)
    
    @State private var value = 0
//    @State private var selection: Int? deprecado link: https://developer.apple.com/documentation/swiftui/navigationlink/init(tag:selection:destination:label:)
    
    @StateObject private var user = UserData() //igual que state solo que este es para variables complejas | las variables complejas actuan por referncias no por valor
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Mi nombre es \(user.name) y tengo \(user.age)")
                
                Button("actualizar"){
                    user.name = "heyy bro"
                    user.age = 34
                }
                
                Text("El valor actual es \(value)")
                
                Button("Suma 1"){
                    value += 1
                }
                

                    NavigationLink("Ir a Binding", destination: BindingView(value: $value, user: user))
                
                // deprecado
//                NavigationLink(destination: BindingView(value: $value), tag: 1, selection: $selection){
//                    Button("Ir a BindingView"){
//                        selection = 1
//                    }
//                }
                
            }.navigationTitle("StateView")
            
        }.environmentObject(user)
        
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView().environmentObject(UserData())
    }
}
