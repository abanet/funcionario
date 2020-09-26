//
//  ContentView.swift
//  Funcionario
//
//  Created by Alberto Banet Masa on 29/01/2020.
//  Copyright © 2020 Alberto Banet Masa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var años: String = ""
    @ObservedObject var gratificacion: Gratificacion
    
    var body: some View {
        VStack {
            TextField("¿Cuántos años llevas trabajando?",
                      text: Binding(
                        get: {
                            return self.años
                      },
                        set: { (newValue) in
                            self.gratificacion.setAñosTrabajados(años: Int(newValue) ?? 0)
                            return self.años = newValue
                      }),
                      onCommit: self.endEditing
            )
                .keyboardType(.numberPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Vacaciones adicionales: " + gratificacion.getDiasVacacionesAdicionales())
                Text("Dias libres adicionales: " + gratificacion.getDiasLibresAdicionales())
            }
            
            Spacer()
            
            Text("El bueno funcionario no nace, se hace.").foregroundColor(Color(UIColor(named: "cabecera")!))
            
            Spacer()
        }.onTapGesture {
            self.endEditing()
        }
        
    }
    
    init(gratificacion: Gratificacion) {
        self.gratificacion = gratificacion
        UITableView.appearance().separatorColor = .clear
        UITableView.appearance().backgroundColor = UIColor(named: "fondo")
        UITableViewCell.appearance().backgroundColor = UIColor(named: "fondo")
    }
    
    private func endEditing() {
        UIApplication.shared.endEditing()
    }
}
