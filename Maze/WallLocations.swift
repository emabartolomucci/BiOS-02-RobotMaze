//
//  WallLocations.swift
//  Maze
//
//  Edited by Emanuele Bartolomucci on 2016/08/13.
//

import Foundation

extension ControlCenter {
    
    // Rubric's step 1
    
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
    
    // Rubric's step 2
    
    func checkWalls(robot:ComplexRobotObject) -> (up: Bool, right: Bool, down: Bool, left: Bool, numberOfWalls: Int) {
        var numberOfWalls = 0
        let cell = mazeController.currentCell(robot)
        
        let isWallUp = cell.top
        if isWallUp {
            numberOfWalls += 1
        }
        
        let isWallRight = cell.right
        if isWallRight {
            numberOfWalls += 1
        }
        
        let isWallDown = cell.bottom
        if isWallDown {
            numberOfWalls += 1
        }
        
        let isWallLeft = cell.left
        if isWallLeft {
            numberOfWalls += 1
        }
        
        return (isWallUp, isWallRight, isWallDown, isWallLeft, numberOfWalls)
    }
}