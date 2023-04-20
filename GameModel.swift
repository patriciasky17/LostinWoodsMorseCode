//
//  GameModel.swift
//  Mo(r)se
//
//  Created by Patricia Ho on 19/04/23.
//

import Foundation

class GameModel: ObservableObject {
    @Published var morseCodeAll: [(key: String, value: String)] = [
        ("a", "._"),
        ("b", "_..."),
        ("c", "_._."),
        ("d", "_.."),
        ("e", "."),
        ("f", ".._."),
        ("g", "__."),
        ("h", "...."),
        ("i", ".."),
        ("j", ".___"),
        ("k", "_._"),
        ("l", "._.."),
        ("m", "__"),
        ("n", "_."),
        ("o", "___"),
        ("p", ".__."),
        ("q", "__._"),
        ("r", "._."),
        ("s", "..."),
        ("t", "_"),
        ("u", ".._"),
        ("v", "..._"),
        ("w", ".__"),
        ("x", "_.._"),
        ("y", "_.__"),
        ("z", "__..")
    ]
    
    @Published var stage1Score: Int = 0
    @Published var stage2Score: Int = 0
}
