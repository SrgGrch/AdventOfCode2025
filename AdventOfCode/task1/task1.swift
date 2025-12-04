//
//  task1.swift
//  AdventOfCode
//
//  Created by Гречишников Сергей Константинович on 02.12.2025.
//

import Foundation

func task1(input: String) -> Int {
    let turns = input.split(separator: "\n")
    print("Count: \(turns.count)")
    
    var current = 50
    var counter = 0
    turns.forEach { turn in
        let value = Int(turn.dropFirst())! % 100
        
        if (turn.first == "R") {
            current += value
            
            print("Op: +, value: \(value)")
        } else {
            current -= value
            
            print("Op: -, value: \(value)")
        }
        
        if (current < 0) {
            current += 100
        }
        
        if (current > 99) {
            current -= 100
        }
        
        if (current == 0) {
            counter += 1
        }
        
        print("Current: \(current)")
    }
    
    return counter
}
