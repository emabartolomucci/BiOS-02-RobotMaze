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

        if robotIsBlocked {
            randomlyRotateRightOrLeft(mazeRobot)
        } else {
            continueStraightOrRotate(mazeRobot)
        }
        
        // Step 2.1c
        var myWallInfo = checkWalls(mazeRobot)
        
        // Step 2.2a
        // Categorize the robot's current location based on the number of walls
        
        // Uncomment the line of code below
        // let isThreeWayJunction = (myWallInfo.numberOfWalls == 1)
        
        // TODO: Define the constant, isTwoWayPath
        // TODO: Define the constant, isDeadEnd
        
        // Step 2.2b
        // Test whether the values of the above constants are correct
        
        // Step 2.3a
        // Three-way Path - else-if statements
        
        // TODO: If the robot encounters a three way junction and there IS a wall ahead, it should randomly rotate right or left. Uncomment the code below.
        //        if isThreeWayJunction && robotIsBlocked {
        //            randomlyRotateRightOrLeft(myRobot)
        //        }
        
        // TODO: If the robot encounters a three way junction and there is NO wall ahead, it should continue straight or rotate (you need to write this else-if statement)
        
        
        // Step 2.3b
        // Two-way Path - else-if statements
        
        // TODO: If the robot encounters a two way path and there is NO wall ahead it should continue forward.
        
        // TODO: If the robot encounters a two way path and there IS a wall ahead, it should randomly rotate.
        
        
        // Step 2.3c
        // Dead end - else-if statements
        
        // TODO: If the robot encounters a dead end and there is NO wall ahead it should move forward.
        
        // TODO: If the robot encounters a dead end and there IS a wall ahead it should rotateRight().
    }
    
    func previousMoveIsFinished(robot: ComplexRobotObject) {
            self.moveComplexRobot(robot)
    }
}