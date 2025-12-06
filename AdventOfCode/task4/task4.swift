//
//  task3.swift
//  AdventOfCode
//
//  Created by Гречишников Сергей Константинович on 06.12.2025.
//

import Foundation

func task3(input: String) -> Int {
    let banks = input.split(separator: "\n")
    
    var acc = 0
    
    banks.forEach { bank in
        var f = bank.first!.wholeNumberValue!
        var s = bank.dropFirst().first!.wholeNumberValue!
        
        bank.dropFirst(2).forEach { c in
            let cn = c.wholeNumberValue!
            if s <= cn || s * 10 + cn > f * 10 + s {
                if s > f {
                    f = s
                }
                
                s = cn
            }
        }
        print(f * 10 + s)
        acc += f*10+s
    }
    
    return acc
}
