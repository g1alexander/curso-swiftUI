//
//  EnvironmentView.swift
//  curso-swiftUI
//
//  Created by g1alexander on 11/6/22.
//

import SwiftUI

struct EnvironmentView: View {
    //propaga el estado a mas de una vista sin necesidad de declarar binding a cada vista
    //NOTA: al declararlo swiftUI no pedira obligatoriamente el parametro, debido a que asume que tu ya lo tienes declarado, esto puede romper la app
    @EnvironmentObject var user: UserData
    var body: some View {
        Text(user.name)
    }
}

struct EnvironmentView_Previews: PreviewProvider {
    static var previews: some View {
        // para instanciar el preview de un environment
        EnvironmentView().environmentObject(UserData())
    }
}
