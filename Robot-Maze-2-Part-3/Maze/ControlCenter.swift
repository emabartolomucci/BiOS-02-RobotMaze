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
        
        let isThreeWayJunction = (myWallInfo.numberOfWalls == 1)
        let isTwoWayPath = (myWallInfo.numberOfWalls == 2)
        let isDeadEnd = (myWallInfo.numberOfWalls == 3)
        
        // Test whether the values of the above constants are correct
        print(isThreeWayJunction)
        print(isTwoWayPath)
        print(isDeadEnd)
        
        // If the robot encounters a three way junction and there IS a wall ahead, it should randomly rotate right or left
        if isThreeWayJunction && robotIsBlocked {
            randomlyRotateRightOrLeft(mazeRobot)
        }
            
            // If the robot encounters a three way junction and there is NO wall ahead, it should continue straight or rotate (you need to write this else-if statement)
        else if isThreeWayJunction && !robotIsBlocked {
            continueStraightOrRotate(mazeRobot, myWallInfo)
        }
            
            // If the robot encounters a two way path and there is NO wall ahead it should continue forward.
        else if isTwoWayPath && !robotIsBlocked {
            mazeRobot.move()
        }
            
            // If the robot encounters a two way path and there IS a wall ahead, it should randomly rotate.
        else if isTwoWayPath && robotIsBlocked {
            randomlyRotateRightOrLeft(mazeRobot)
        }
            
            // If the robot encounters a dead end and there is NO wall ahead it should move forward.
        else if isDeadEnd && !robotIsBlocked {
            mazeRobot.move()
        }
            // If the robot encounters a dead end and there IS a wall ahead it should rotateRight()
        else if isDeadEnd && robotIsBlocked {
            mazeRobot.rotateRight()
        }

        
        // Step 3.2
        // Two-way Path - else-if statements
        
        // TODO: If the robot encounters a two way path and there is NO wall ahead it should continue forward.
        
        // TODO: If the robot encounters a two way path and there IS a wall ahead, it should turn in the direction of the clear path.
        
    }
    
    func previousMoveIsFinished(robot: ComplexRobotObject) {
            self.moveComplexRobot(robot)
    }
    
}