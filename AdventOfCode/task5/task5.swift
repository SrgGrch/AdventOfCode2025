//
//  task4.swift
//  AdventOfCode
//
//  Created by Гречишников Сергей Константинович on 06.12.2025.
//

import Foundation

func task4(input: String) -> Int {
    var rows = input
        .split(separator: "\n")
        .map { substring in
            Array(substring)
        }
    
    var acc = 0
    var pAcc = -1
    
    while (pAcc != acc) {
        pAcc = acc
        
        for row in 0..<rows.count {
            for column in 0..<rows[0].count {
                if rows[row][column] != "@" { continue }
                
                if check(row: row, column: column, rows: rows) {
                    rows[row][column] = "."
                    acc += 1
                }
            }
        }
    }
    
    return acc
}

private func check(row: Int, column: Int, rows: [[Character]]) -> Bool {
    var acc = 0
    
    // Use optional chaining (`?`) because the safe subscript returns an optional.
    if rows[safe: row]?[safe: column - 1] == "@" { acc += 1 }
    if rows[safe: row]?[safe: column + 1] == "@" { acc += 1 }
    if rows[safe: row - 1]?[safe: column] == "@" { acc += 1 }
    if rows[safe: row - 1]?[safe: column - 1] == "@" { acc += 1 }
    if rows[safe: row - 1]?[safe: column + 1] == "@" { acc += 1 }
    if rows[safe: row + 1]?[safe: column - 1] == "@" { acc += 1 }
    if rows[safe: row + 1]?[safe: column] == "@" { acc += 1 }
    if rows[safe: row + 1]?[safe: column + 1] == "@" { acc += 1 }
    
//    print("index (\(row), \(column)): \(acc)")
    
    return acc < 4
}

extension Collection {
    /// Returns the element at the specified index if it is within bounds, otherwise `nil`.
    subscript(safe index: Index) -> Element? {
        indices.contains(index) ? self[index] : nil
    }
}
