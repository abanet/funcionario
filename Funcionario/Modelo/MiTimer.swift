//
//  MiTimer.swift
//  Funcionario
//
//  Created by Alberto Banet Masa on 04/02/2020.
//  Copyright © 2020 Alberto Banet Masa. All rights reserved.
//

import Foundation
import Combine

class MiTimer: ObservableObject {
    var currentTimePublisher = Timer.TimerPublisher(interval: 1.0, runLoop: .main, mode: .default)
    var cancellable: AnyCancellable?
    
    init() {
        self.cancellable = currentTimePublisher.connect() as? AnyCancellable
    }
    
    deinit {
        print("deinit time")
        self.cancellable?.cancel()
    }
    
   
   
}
