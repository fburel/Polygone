//
//  Polygone.swift
//  Polygone
//
//  Created by florian BUREL on 22/09/2015.
//  Copyright (c) 2015 florian BUREL. All rights reserved.
//

import Foundation

class Polygone {
    
    private static let polygoneNames = [
        "Triangle",
        "Quadrilatère",
        "Pentagone",
        "Hexagone",
        "Heptagone",
        "Octogone",
        "Enéagone",
        "Décagone",
        "Hendécagone",
        "Dodécagone"
    ]
    
    
    var numberOfSide : Int = 3 {
        didSet{
            numberOfSide = min(max(numberOfSide,3),12)
        }
        willSet{
            println("le nombre de cotés va passer à \(newValue)")
        }
    }
    
    var name : String { get {
        
            return Polygone.polygoneNames[numberOfSide - 3]
        }
    }

    
}