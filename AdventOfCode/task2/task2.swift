//
//  task1.swift
//  AdventOfCode
//
//  Created by Гречишников Сергей Константинович on 02.12.2025.
//

import Foundation

func task2(input: String) -> Int {
    let ranges = input.split(separator: ",")
    var acc = 0
    
    ranges.forEach { range in
        let edges = range.split(separator: "-")
        let start = edges[0]
        let end = edges[1].filter { $0.isNumber }
        
        if (start.count == end.count && start.count % 2 == 1) {
            print("Skiping: \(range)")
        } else {
            for number in Int(start)!...Int(end)! {
                let str = String(number)

                if str.count % 2 == 0 {
                    let midIndex = str.index(str.startIndex, offsetBy: str.count/2)
                    let firstPart = str[..<midIndex]
                    let secondPart = str[midIndex...]
                    
                    if firstPart == secondPart {
                        print(str)
                        acc += number
                    }
                }
            }
        }
    }
    
    return acc
}
