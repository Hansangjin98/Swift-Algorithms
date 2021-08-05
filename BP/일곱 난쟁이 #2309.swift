//
//  main.swift
//  일곱 난쟁이 #2309
//
//  Created by 한상진 on 2021/08/05.
//

import Foundation

var arr: [Int] = []
for _ in 0..<9 {
    arr.append(Int(readLine()!)!)
}
var allDwarfHeight = arr.reduce(0) { $0 + $1}

func printResult(exceptDwarf indices: [Int]) {
    indices.reversed().forEach { arr.remove(at: $0) }
    arr.sort()
    arr.forEach { print($0) }
}

func solve() {
    for (firstDwarfIndex, firstDwarfHeight) in arr.enumerated() {
        if allDwarfHeight - firstDwarfHeight <= 100 {
            continue
        }
        for secondDwarfIndex in (firstDwarfIndex+1)..<9 {
            let secondDwarfHeight = arr[secondDwarfIndex]
            if (allDwarfHeight - (firstDwarfHeight + secondDwarfHeight)) == 100 {
                printResult(exceptDwarf: [firstDwarfIndex, secondDwarfIndex])
                return
            }
        }
    }
}

solve()
