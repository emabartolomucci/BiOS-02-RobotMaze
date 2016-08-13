//
//  CollectingDataAboutWalls.swift
//  Maze
//
//  Edited by Emanuele Bartolomucci on 2016/08/13.
//

import Foundation

extension ControlCenter {
    
    
    func isFacingWall(robot: ComplexRobotObject, direction: MazeDirection) -> Bool {
        
        let cell = mazeController.currentCell(robot)
        var isWall: Bool = false
        
        switch(direction) {
        case .Up:
            if cell.top {
                isWall = true
            }
        case .Right:
            if cell.right {
                isWall = true
            }
        case .Down:
            if cell.bottom {
                isWall = true
            }
        case .Left:
            if cell.left {
                isWall = true
            }
            
        }
        return isWall
    }

    func checkWalls(robot:ComplexRobotObject) -> (up: Bool, right: Bool, down: Bool, left: Bool, numberOfWalls: Int) {
        var numberOfWalls = 0
        let cell = mazeController.currentCell(robot)
        
        // Check is there is a wall at the top of the current cell
        let isWallUp = cell.top
        if isWallUp {
            numberOfWalls += 1
        }
        
        // Check if there is a wall to the right of the current cell
        let isWallRight = cell.right
        if isWallRight {
            numberOfWalls += 1
        }
        
        // Check if there is a wall at the bottom of the current cell
        let isWallDown = cell.bottom
        if isWallDown {
            numberOfWalls += 1
        }
        
        // Check if there is a wall to the right of the current cell
        let isWallLeft = cell.left
        if isWallLeft {
            numberOfWalls += 1
        }
        
        // Step 2.1b
        return (isWallUp, isWallRight, isWallDown, isWallLeft, numberOfWalls)
    }
}