//
//  Contador.swift
//  Funcionario
//
//  Created by Alberto Banet Masa on 06/02/2020.
//  Copyright © 2020 Alberto Banet Masa. All rights reserved.
//

import Foundation

class Contador {
    
    private var años: Int       = 0
    private var meses: Int      = 0
    private var dias: Int       = 0
    private var horas: Int      = 0
    private var minutos: Int    = 0
    private var segundos: Int   = 0
    
    init(años: Int, meses: Int, dias: Int, horas: Int, minutos: Int, segundos: Int) {
        self.años = años
        self.meses = meses
        self.dias = dias
        self.horas = horas
        self.minutos = minutos
        self.segundos = segundos
    }
    
    func getAños() -> Int {
        return años
    }
    
    func setAños(años: Int) {
        self.años = años
    }
    
    func getMeses() -> Int {
        return meses
    }
    
    func setMeses(meses: Int) {
        self.meses = meses
    }
    
    func getDias() -> Int {
        return dias
    }
    
    func setDias(dias: Int) {
        self.dias = dias
    }
    
    func getHoras() -> Int {
        return horas
    }
    
    func setHoras(horas: Int) {
        self.horas = horas
    }
    
    func getMinutos() -> Int {
        return minutos
    }
    
    func setMinutos(minutos: Int) {
        self.minutos = minutos
    }
    
    func getSegundos() -> Int {
        return segundos
    }
    
    func setSegundos(segundos: Int) {
        self.segundos = segundos
    }
    
}
