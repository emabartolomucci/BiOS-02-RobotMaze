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
          if robotIsBlocked {
                randomlyRotateRightOrLeft(mazeRobot)
            } else {
                mazeRobot.move()
            }

    
        // Step 1.4
        // TODO: Write an if statement that enables the robot to choose how to move. Use the pseudocode below as a guide.
        
        // Pseudocode
//         if the robot is blocked {
//             then randomly rotate
//         } otherwise {
//             either continue straight or randomly rotate
//         }
    }
        
    func previousMoveIsFinished(robot: ComplexRobotObject) {
            self.moveComplexRobot(robot)
    }
    
}