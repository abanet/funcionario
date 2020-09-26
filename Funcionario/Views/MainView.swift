//
//  MainView.swift
//  Funcionario
//
//  Created by Alberto Banet Masa on 30/01/2020.
//  Copyright © 2020 Alberto Banet Masa. All rights reserved.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var gratificacion: Gratificacion
    
    var body: some View {
        ZStack{
            Color(UIColor(named: "cabecera")!).edgesIgnoringSafeArea(.all)
            
            VStack {
                Cabecera()
                TabView {
                    VistaSelectorDate()
                        .tabItem {
                            Image(systemName: "1.square.fill")
                            Text("Fecha")
                    }
                    .tag(0)
                    ContentView(gratificacion: gratificacion)
                        .tabItem {
                            Image(systemName: "2.square.fill")
                            Text("Años")
                    }
                    .tag(1)
                }
            }
        }
       
    }
}


