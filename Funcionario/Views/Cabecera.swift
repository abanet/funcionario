//
//  Cabecera.swift
//  Funcionario
//
//  Created by Alberto Banet Masa on 04/02/2020.
//  Copyright © 2020 Alberto Banet Masa. All rights reserved.
//

import SwiftUI

struct Cabecera: View {
    var body: some View {
        HStack {
            Text("Funcionario")
                .font(.largeTitle)
                .foregroundColor(.white)
        }.frame(minWidth: 100, idealWidth: .infinity, maxWidth: .infinity, minHeight: 44, idealHeight: 44, maxHeight: 44, alignment: .center)
        .background(Color(UIColor(named: "cabecera")!))
    }
}

struct Cabecera_Previews: PreviewProvider {
    static var previews: some View {
        Cabecera()
    }
}
