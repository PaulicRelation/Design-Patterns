//
//  Settings.swift
//  Design-Patterns
//
//  Created by Pavel on 2/14/19.
//  Copyright © 2019 Pavel. All rights reserved.
//

import UIKit

class Settings {
    static let shared = Settings()
    
    var colorStyle = UIColor.white
    var volumeLevel: Float = 1.0

    private init() {}
}
