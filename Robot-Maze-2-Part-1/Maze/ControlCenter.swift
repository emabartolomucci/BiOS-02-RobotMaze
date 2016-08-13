//
//  ControlCenter.swift
//  Maze
//
//  Created by Jarrod Parkes on 8/14/15.
//  Copyright © 2015 Udacity, Inc. All rights reserved.
//
import UIKit

class ControlCenter {

    var mazeController: MazeController!

    func moveComplexRobot(mazeRobot: ComplexRobotObject) {
        
        // Step 1.1c
        let robotIsBlocked = isFacingWall(mazeRobot, direction: mazeRobot.direction)
        
        
        // Step 1.1d
/*        if robotIsBlocked {
                randomlyRotateRightOrLeft(mazeRobot)
            } else {
                mazeRobot.move()
            }
*/
    
        // Step 1.4
        if robotIsBlocked {
            randomlyRotateRightOrLeft(mazeRobot)
        } else {
            continueStraightOrRotate(mazeRobot)
        }
    }
        
    func previousMoveIsFinished(robot: ComplexRobotObject) {
            self.moveComplexRobot(robot)
    }
    
}