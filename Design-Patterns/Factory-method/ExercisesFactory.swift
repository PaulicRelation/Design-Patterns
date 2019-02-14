//
//  ExercisesFactory.swift
//  Design-Patterns
//
//  Created by Pavel on 2/14/19.
//  Copyright © 2019 Pavel. All rights reserved.
//

import Foundation

enum Exercises {
    case jumping, squarts, swingPress
}

class ExercisesFactory {
    static let defaultFactory = ExercisesFactory()
    
    func createExercise(name: Exercises) -> Exercise {
        switch name {
        case .squarts: return Squarts()
        case .jumping: return Jumping()
        case .swingPress: return SwingPress()

            
        }
    }

}
