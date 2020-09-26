//
//  DigitoView.swift
//  Funcionario
//
//  Created by Alberto Banet Masa on 06/02/2020.
//  Copyright © 2020 Alberto Banet Masa. All rights reserved.
//

import SwiftUI

struct DigitoView: View {
     var numero: Int
     var literal: String
    
    var body: some View {
        VStack(alignment: .center) {
        Text(String(numero))
            .font(Font.system(.largeTitle, design: .monospaced))
        Text(literal)
            .font(.caption)
        }
    }
}

struct DigitoView_Previews: PreviewProvider {
    
    static var previews: some View {
        DigitoView(numero: Int(3), literal: "Minutos")
            .animation(.easeIn(duration: 1.0))
    }
}
