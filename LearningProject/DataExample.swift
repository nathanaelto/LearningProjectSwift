//
//  DataExample.swift
//  LearningProject
//
//  Created by Nathanael TO on 27/06/2022.
//

import Foundation

// Work with system of pointers / references
// Call : Reference type
class AClass {
    var name = ""

    func sayHello() {
        print(name)
    }
}

// Only transfer by copy
// Call : Value type
struct AStruct {
    var name = ""

    func sayHello() {
        print(name)
    }
}

struct FeatureApp {
    
}
