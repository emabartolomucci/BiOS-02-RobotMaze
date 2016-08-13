//
//  WallLocations.swift
//  Maze
//
//  Created by Gabrielle Miller-Messner on 11/6/15.
//  Copyright © 2015 Udacity, Inc. All rights reserved.
//

import Foundation

extension ControlCenter {
    
    func isFacingWall(robot: ComplexRobotObject, direction: MazeDirection) -> Bool {
        
        let cell = mazeController.currentCell(robot)
        var isWall: Bool = false
        
        // Step 1.1a
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
        
        // Step 1.1b
        return isWall
    }
}