//
//  Gratificacion.swift
//  Funcionario
//
//  Created by Alberto Banet Masa on 29/01/2020.
//  Copyright © 2020 Alberto Banet Masa. All rights reserved.
//

import Foundation
import Combine

class Gratificacion: ObservableObject {
    /**
            Días de vacaciones adicionales según número de años trabajados
     */
   private let diasVacaciones: [Int:Int] = [
        // menos de 15: 0 días adicionales
        15:1, 16:1, 17:1, 18:1, 19:1,
        20:2, 21:2, 22:2, 23:2, 24:2, 25:3, 26:3, 27:3, 28:3, 29:3,
        30:4, 31:4, 32:4,
        33:4, 34:4, 35:4,
        36:4, 37:4, 38:4,
        39:4, 40:4, 41:4,
        42:4, 43:4, 44:4,
        45:4, 46:4, 47:4,
        48:4
    ]
    
    /**
            Días de libre disposición adicionales según número de años trabajados
     */
   private let diasLibres: [Int: Int] = [
        // menos de 15: 0 días adicionales
        15:0, 16:0, 17:0,
        18:2, 19:2, 20:2, 21:2, 22:2, 23:2,
        24:3, 25:3, 26:3,
        27:4, 28:4, 29:4,
        30:5, 31:5, 32:5,
        33:6, 34:6, 35:6,
        36:7, 37:7, 38:7,
        39:8, 40:8, 41:8,
        42:9, 43:9, 44:9,
        45:10, 46:10, 47:10,
        48:11
    ]
    
    var añosTrabajados: Int {
        didSet {
            if añosTrabajados < 15 {  // No hay derecho a nada de nada!!
                vacacionesAdicionales = 0
                diasLibresAdicionales = 0
            } else { // vamos a ver qué tienes
                if let vacas = diasVacaciones[añosTrabajados], let dias = diasLibres[añosTrabajados] {
                    self.vacacionesAdicionales = vacas
                    self.diasLibresAdicionales = dias
                }
                
            }
        }
    }
    
     @Published private (set) var vacacionesAdicionales: Int = 0
     @Published private (set) var diasLibresAdicionales: Int = 0
    
    init() {
        self.añosTrabajados = 0
      
    }
    
    init(añosTrabajados: Int) {
     self.añosTrabajados = añosTrabajados
    }
    
    init(fecha: Date) {
        // calcular años trabajados
        // TODO: calcular años trabajados
        self.añosTrabajados = 20
    }
    
    func getDiasVacacionesAdicionales() -> String {
        return String(vacacionesAdicionales)
    }
    
    func getDiasLibresAdicionales() -> String {
        return String(diasLibresAdicionales)
    }
    
    func setAñosTrabajados(años: Int) {
        self.añosTrabajados = años
    }
   
}
