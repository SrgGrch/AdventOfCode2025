//
//  util.swift
//  AdventOfCode
//
//  Created by Гречишников Сергей Константинович on 02.12.2025.
//

import Foundation

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
