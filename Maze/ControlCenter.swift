//
//  ControlCenter.swift
//  Maze
//
//  Edited by Emanuele Bartolomucci on 2016/08/13.
//

import UIKit

class ControlCenter {

    var mazeController: MazeController!

    func moveComplexRobot(mazeRobot: ComplexRobotObject) {
      
        let robotIsBlocked = isFacingWall(mazeRobot, direction: mazeRobot.direction)
        
        let myWallInfo = checkWalls(mazeRobot)
        
        // Rubric's step 3
        
        let isThreeWayJunction = (myWallInfo.numberOfWalls == 1)
        let isTwoWayPath = (myWallInfo.numberOfWalls == 2)
        let isDeadEnd = (myWallInfo.numberOfWalls == 3)
        
        print(isThreeWayJunction)
        print(isTwoWayPath)
        print(isDeadEnd)

        // Rubric's step 4
        
        if isThreeWayJunction && robotIsBlocked {
            randomlyRotateRightOrLeft(mazeRobot)
        } else if isThreeWayJunction && !robotIsBlocked {
            continueStraightOrRotate(mazeRobot, wallInfo: myWallInfo)
        } else if isTwoWayPath && !robotIsBlocked {
            mazeRobot.move()
        } else if isTwoWayPath && robotIsBlocked {
            turnTowardClearPath(mazeRobot, wallInfo: checkWalls(mazeRobot))
        } else if isDeadEnd && !robotIsBlocked {
            mazeRobot.move()
        } else if isDeadEnd && robotIsBlocked {
            mazeRobot.rotateRight()
        }
    }
    
    func previousMoveIsFinished(robot: ComplexRobotObject) {
            self.moveComplexRobot(robot)
    }
    
}