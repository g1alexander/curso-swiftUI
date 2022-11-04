//
//  MainView.swift
//  HelloWorld
//
//  Created by g1alexander on 11/3/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView{
            VStack{
                MapView().frame(height: 400)
                Divider()
                ImageView().offset(y: -150)
                Divider()
                ContentView()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
            MainView()
    }
}
