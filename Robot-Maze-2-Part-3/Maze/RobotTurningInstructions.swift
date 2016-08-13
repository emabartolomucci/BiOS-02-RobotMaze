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
        
        if randomNumber == 1 {
            robot.rotateRight()
        } else {
            robot.rotateLeft()
        }
    }
    
    func continueStraightOrRotate(robot: ComplexRobotObject, wallInfo:(up: Bool, right: Bool, down: Bool, left: Bool, numberOfWalls: Int)) {
        let randomNumber = arc4random() % 2
        
        if randomNumber == 1 {
            robot.move()
        } else {
            turnTowardClearPath(robot, wallInfo: wallInfo)
        }

    }

    func turnTowardClearPath(robot: ComplexRobotObject, wallInfo: (up: Bool, right: Bool, down: Bool, left: Bool, numberOfWalls: Int)) {
        
        // Step 3.1
        if robot.direction == .Left && wallInfo.down {
            robot.rotateRight()
        } else if robot.direction == .Up && wallInfo.left {
            robot.rotateRight()
        } else if robot.direction == .Right && wallInfo.up {
            robot.rotateRight()
        } else if robot.direction == .Down && wallInfo.right {
            robot.rotateRight()
        } else if robot.direction == .Left && wallInfo.up {
            robot.rotateLeft()
        } else if robot.direction == .Up && wallInfo.right {
            robot.rotateLeft()
        } else if robot.direction == .Right && wallInfo.down {
            robot.rotateLeft()
        } else if robot.direction == .Down && wallInfo.left {
            robot.rotateLeft()
        }
        else {
            robot.rotateLeft()
        }

    }

}