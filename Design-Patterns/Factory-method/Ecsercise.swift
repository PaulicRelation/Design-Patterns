//
//  Ecsercise.swift
//  Design-Patterns
//
//  Created by Pavel on 2/14/19.
//  Copyright © 2019 Pavel. All rights reserved.
//

import Foundation

protocol Exercise {
    var name: String {get}
    var type: String {get}
    
    func start()
    func stop()
    
}
