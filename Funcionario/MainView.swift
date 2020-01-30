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
        TabView {
            ContentView(gratificacion: gratificacion)
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("primero")
            }.tag(0)
            VistaSelectorDate()
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("segundo")
            }.tag(1)
        }
    }
}


