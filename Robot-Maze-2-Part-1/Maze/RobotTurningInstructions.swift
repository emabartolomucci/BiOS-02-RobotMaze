//
//  RobotTurningInstructions.swift
//  Maze
//
//  Edited by Emanuele Bartolomucci on 2016/08/13.
//

import Foundation

extension ControlCenter {
    
    func randomlyRotateRightOrLeft(robot: ComplexRobotObject) {
        let randomNumber = arc4random() % 2
        
        // Step 1.2
        if randomNumber == 1 {
            robot.rotateRight()
        } else {
            robot.rotateLeft()
        }
    }
    
    func continueStraightOrRotate(robot: ComplexRobotObject) {
        let randomNumber = arc4random() % 2
        
        // Step 1.3
        if randomNumber == 1 {
            robot.move()
        } else {
            randomlyRotateRightOrLeft(robot)
        }
    }
}