//
//  task4.swift
//  AdventOfCode
//
//  Created by Гречишников Сергей Константинович on 06.12.2025.
//

import Foundation

func task5(input: String) -> Int {
    let tables = input
        .split(separator: "\n\n")
    
    let freshIds = tables[0]
        .split(separator: "\n")
        .map{ r in
            let rArr = r.split(separator: "-")
            return Range(from: Int(rArr[0])!, to: Int(rArr[1])!)
        }
    
    let ingrs = tables[1].split(separator: "\n").map{ Int($0)! }
    
    print(freshIds)
    print("----")
    print(ingrs)
    
    var acc = 0
    
    
    ingrs.forEach { ingr in
        if freshIds.first(where: { $0.contains(ingr) }) != nil {
            acc += 1
        }
    }
    
    return acc
}

struct Range {
    let from: Int
    let to: Int
    
    func contains(_ value: Int) -> Bool {
        value >= from && value <= to
    }
}
