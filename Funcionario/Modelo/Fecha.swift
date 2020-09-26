//
//  Fecha.swift
//  Funcionario
//
//  Created by Alberto Banet Masa on 04/02/2020.
//  Copyright © 2020 Alberto Banet Masa. All rights reserved.
//

import Foundation

/*
 La clase Fecha se utiliza para trabajar con las fechas.
 El formato de fecha que se va a utilizar es siempre dd-MM-yyyy
 */
class Fecha {
    private var formatoDate: Date {
        didSet {
            fecha = dateToString(formatoDate)
            hora = dateToHora(formatoDate)
        }
    }
    
    private var fecha: String = ""
    private var hora: String = ""
    
    init() {
        formatoDate = Date()
    }
    
    init(_ date: Date) {
        formatoDate = date
    }
    
 
    // MARK: Funciones auxiliares de conversión de formatos de fechas
    
    func dateToString(_ date: Date) -> String {
        let formato = DateFormatter()
        formato.dateFormat = "dd-MM-yyyy"
        return formato.string(from: date)
    }
    
    func dateToHora(_ date: Date) -> String {
        let formato = DateFormatter()
        formato.dateFormat = "HH:mm"
        return formato.string(from: date)
    }
    
    func dateYHoraToString(_ date: Date) -> String {
        let formato = DateFormatter()
        formato.dateFormat = "dd-MM-yyyyHH:mm"
        return formato.string(from: date)
    }
    
    func stringToDate(fecha: String) -> Date? {
        let formato = DateFormatter()
        formato.dateFormat = "dd-MM-yyyy"
        let fechaTemp = formato.date(from: fecha)
        return fechaTemp
    }
    
    func stringToDateYHora(fechaCompleta: String) -> Date? {
        let formato = DateFormatter()
        formato.dateFormat = "dd-MM-yyyyHH:mm"
        let fechaTemp = formato.date(from: fechaCompleta)
        return fechaTemp
    }
    
    
}
