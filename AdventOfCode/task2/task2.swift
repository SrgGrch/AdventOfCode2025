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
        
//        readLine()
    }
    
    return counter
}

func readFromFile(fileName: String) -> String {
    // Set the file path

    do {
        // Get the contents
        let contents = try String(contentsOfFile: "/Users/skgrechishnikov/Documents/Projects/AdventOfCode/AdventOfCode/" + fileName, encoding: .utf8)
//        print(contents)
        return contents
    }
    catch let error as NSError {
        print("Ooops! Something went wrong: \(error)")
    }
    
    return "error"
}
