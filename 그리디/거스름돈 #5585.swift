//
//  main.swift
//  거스름돈 #5585
//
//  Created by 한상진 on 2021/08/05.
//

import Foundation

var price = Int(readLine()!)!
var change = 1000 - price
var cnt = 0
let coin = [500, 100, 50, 10, 5, 1]
var idx = 0

while change != 0 {
    cnt += change / coin[idx]
    change %= coin[idx]
    idx += 1
}

print(cnt)
