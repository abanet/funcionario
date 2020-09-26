//
//  VistaSelectorDate.swift
//  Funcionario
//
//  Created by Alberto Banet Masa on 30/01/2020.
//  Copyright © 2020 Alberto Banet Masa. All rights reserved.
//

import SwiftUI
import Combine

struct VistaSelectorDate: View {
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.dateFormat = "dd-MM-yyyy"
        return formatter
    }
    
    @State private var fecha = UserDefaults.standard.object(forKey: "fechaEntrada") as? Date ?? Date()
    @State private var ahora: Date = Date()
    
   // @EnvironmentObject var timer: MiTimer
    
    @State private var timerPublisher = Timer.TimerPublisher(interval: 1.0, runLoop: .main, mode: .default).autoconnect()
    
    var body: some View {
        VStack {
            Group {
                Text("¿Cuándo comenzaste a trabajar").padding(.top)
                
                // DatePicker($fecha, selection: ...Date(), displayedComponents: .date)
                DatePicker("Please enter a time", selection:
                    Binding(
                        get: {
                            return UserDefaults.standard.object(forKey: "fechaEntrada") as? Date ?? Date()
                        },
                        set: { (newValue) in
                            UserDefaults.standard.set(newValue, forKey: "fechaEntrada")
                            return self.fecha = newValue
                        }
                    )
                    , in: ...Date(), displayedComponents: .date)
                    .labelsHidden()
            }
            
            Group {
                Text("Entraste el \(fecha, formatter: dateFormatter)")
                Text("Tienes \(fecha.trienios(hasta: ahora)) trienios.")
            }
            
            VStack {
                Spacer()
                Text("Próximo trienio el \(fecha.proximoTrienio(ahora: ahora), formatter: dateFormatter)")
                CountDownView(crono: ahora.hanPasado(hasta: fecha.proximoTrienio(ahora: ahora))!)
                    .frame(width: UIScreen.main.bounds.size.width, height: 80, alignment: .center)
                Spacer()
            }
            .onReceive(self.timerPublisher) { _ in
                DispatchQueue.main.async {
                    self.ahora = Date()
                }
                
            }
            
        }
        .onAppear {
            timerPublisher = Timer.TimerPublisher(interval: 1.0, runLoop: .main, mode: .default).autoconnect()
        }
        
    }
    
    
}

struct VistaSelectorDate_Previews: PreviewProvider {
    static var previews: some View {
        VistaSelectorDate()
    }
}
