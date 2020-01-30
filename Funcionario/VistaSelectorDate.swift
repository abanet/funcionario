//
//  VistaSelectorDate.swift
//  Funcionario
//
//  Created by Alberto Banet Masa on 30/01/2020.
//  Copyright © 2020 Alberto Banet Masa. All rights reserved.
//

import SwiftUI

struct VistaSelectorDate: View {
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }
    
    @State private var fecha = Date()
    
    var body: some View {
        VStack {
            DatePicker(selection: $fecha, in: ...Date(), displayedComponents: .date) {
                Text("Fecha de entrada")
            }
            Text("Entraste el \(fecha, formatter: dateFormatter)")
        }
    }
}

struct VistaSelectorDate_Previews: PreviewProvider {
    static var previews: some View {
        VistaSelectorDate()
    }
}
