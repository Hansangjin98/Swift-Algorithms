//
//  main.swift
//  암호만들기 #1759
//
//  Created by 한상진 on 2021/08/06.
//

import Foundation

let LC = readLine()!.split(separator: " ").map() { Int($0)! }
let alphabets = readLine()!.split(separator: " ").sorted()
var vowel = Set<Character>("aeiou")
var word = ""
var result: [String] = []
var available = [Bool](repeating: true, count: LC[1])

func solution(idx: Int) {
    guard word.count != LC[0] else {
        let countOfVowel = vowel.intersection(word).count
        if countOfVowel >= 1, word.count - countOfVowel >= 2 {
            result.append(word)
        }
        return
    }
    
    for i in idx..<alphabets.count where available[i] {
        available[i] = false
        word.append(contentsOf: alphabets[i])
        solution(idx: i + 1)
        available[i] = true
        word.popLast()
    }
}

solution(idx: 0)
result.forEach() { print($0) }
