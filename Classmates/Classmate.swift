//
//  Classmate.swift
//  Classmates
//
//  Created by COREY ATKINSON on 10/11/23.
//

import Foundation
public class Classmate {
    var name : String
    var age : Int
    var hair : Hair
    
    init(name: String, age: Int, hair: Hair) {
        self.name = name
        self.age = age
        self.hair = hair
    }
    
    
    
}
enum Hair {
    case blonde
    case brown
    case black
    case red
    case chestnut
}
