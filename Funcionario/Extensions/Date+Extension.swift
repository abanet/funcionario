//
//  Date+Extension.swift
//  Funcionario
//
//  Created by Alberto Banet Masa on 04/02/2020.
//  Copyright © 2020 Alberto Banet Masa. All rights reserved.
//

import Foundation

extension Date {
    
    // Cadena q expresa el tiempo que ha pasado desde la fecha self hasta la fecha indicada.
    func hanPasado(hasta: Date) -> String? {
        let components = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: self, to: hasta)
        guard let años = components.year, let meses = components.month, let dias = components.day, let horas = components.hour, let minutos = components.minute, let segundos = components.second else { return nil }
        
        var resultado = ""
        if años > 0     { resultado += "\(años)a" }
        if meses > 0    { resultado += "\(meses)m" }
        if dias > 0    { resultado += "\(dias)d" }
        if horas > 0    { resultado += "\(horas)h" }
        if minutos > 0    { resultado += "\(minutos)m" }
        if segundos > 0    { resultado += "\(segundos)s" }
        return resultado
       }
    
    func hanPasado(hasta: Date) -> Contador? {
       let components = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: self, to: hasta)
        guard let años = components.year, let meses = components.month, let dias = components.day, let horas = components.hour, let minutos = components.minute, let segundos = components.second else { return nil }
        return Contador(años: años, meses: meses, dias: dias, horas: horas, minutos: minutos, segundos: segundos)
        
    }
    
//    func falta(para: Date) -> String? {
//         var components = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: self, to: Date())
//    }
    
    func trienios(hasta: Date) -> Int {
        let components = Calendar.current.dateComponents([.year], from: self, to: hasta)
        guard let años = components.year else { return 0 }
        return Int(años/3)
    }
    
    // Devuelve la fecha del último trienio desde self
    func proximoTrienio(ahora: Date) -> Date {

        var componenteAño = DateComponents()
        componenteAño.year = trienios(hasta: ahora) * 3 + 3
        return Calendar.current.date(byAdding: componenteAño, to: self) ?? Date.init(timeIntervalSince1970: 0)
        
    }
}
