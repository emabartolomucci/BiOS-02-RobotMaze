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
        
        // Step 2.3a
        
        // If the robot encounters a three way junction and there IS a wall ahead, it should randomly rotate right or left
        if isThreeWayJunction && robotIsBlocked {
            randomlyRotateRightOrLeft(mazeRobot)
        }
        
        // If the robot encounters a three way junction and there is NO wall ahead, it should continue straight or rotate (you need to write this else-if statement)
        
        else if isThreeWayJunction && !robotIsBlocked {
            continueStraightOrRotate(mazeRobot)
        }
        
        
        // TODO:
        
        
        // Step 2.3b
        // Two-way Path - else-if statements
        
        // TODO: If the robot encounters a two way path and there is NO wall ahead it should continue forward.
        
        // TODO: If the robot encounters a two way path and there IS a wall ahead, it should randomly rotate.
        
        
        // Step 2.3c
        // Dead end - else-if statements
        
        // TODO: If the robot encounters a dead end and there is NO wall ahead it should move forward.
        
        // TODO: If the robot encounters a dead end and there IS a wall ahead it should rotateRight().
        
        
        
        
        /*
         if isThreeWayJunction && robotIsBlocked {
         randomlyRotateRightOrLeft(robot)
         } else if  isThreeWayJunction && !robotIsBlocked {
         continueStraightOrRotate(robot, wallInfo: myWallInfo)
         } else if isTwoWayPath && !robotIsBlocked {
         robot.move()
         } else if isTwoWayPath && robotIsBlocked {
         turnTowardClearPath(robot, wallInfo: checkWalls(robot))
         } else if isDeadEnd && !robotIsBlocked {
         robot.move()
         } else if isDeadEnd && robotIsBlocked {
         robot.rotateRight()
         }
         
         */

    }
    
    func previousMoveIsFinished(robot: ComplexRobotObject) {
            self.moveComplexRobot(robot)
    }
}