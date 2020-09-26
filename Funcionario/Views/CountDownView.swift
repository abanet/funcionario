//
//  CountDownView.swift
//  Funcionario
//
//  Created by Alberto Banet Masa on 06/02/2020.
//  Copyright © 2020 Alberto Banet Masa. All rights reserved.
//

import SwiftUI

struct CountDownView: View {
    var crono: Contador
    var body: some View {
        HStack(alignment: .top, spacing: 8.0) {
            Group {
            DigitoView(numero: crono.getAños(), literal: "A")
            Divider()
            }
            
            Group {
            DigitoView(numero: crono.getMeses(), literal: "M")
            Divider()
            }
            
            Group {
            DigitoView(numero: crono.getDias(), literal: "D")
            Divider()
            }
            
            Group {
            DigitoView(numero: crono.getHoras(), literal: "H")
            Divider()
            }
            
            Group {
            DigitoView(numero: crono.getMinutos(), literal: "M")
            Divider()
            }
            
            DigitoView(numero: crono.getSegundos(), literal: "S")
        }
    }
}

struct CountDownView_Previews: PreviewProvider {
    static var previews: some View {
        CountDownView(crono: Contador(años: 4, meses: 7, dias: 2, horas: 32, minutos: 66, segundos: 59))
        
    }
}
