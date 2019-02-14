//
//  ViewController.swift
//  Design-Patterns
//
//  Created by Pavel on 2/14/19.
//  Copyright © 2019 Pavel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var exerciseArray = [Exercise]()         //for factory method



    override func viewDidLoad() {
        super.viewDidLoad()
        
        //singletone
        print(Settings.shared.volumeLevel)
        Settings.shared.volumeLevel = 3.0
        print(Settings.shared.volumeLevel)
        
        //factory method
        createExercise(exName: .jumping)
        createExercise(exName: .squarts)
        createExercise(exName: .swingPress)


        runExercise()
        
    }
    
    func createExercise(exName: Exercises) {
        let newExercise = ExercisesFactory.defaultFactory.createExercise(name: exName)

        exerciseArray.append(newExercise)
    }
    
    func runExercise() {
        for ex in exerciseArray {
            ex.start()
            ex.stop()
        }
    }
    
}

