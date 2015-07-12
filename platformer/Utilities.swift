//
//  Utilities.swift
//  platformer
//
//  Created by Flávio Silvério on 12/07/15.
//  Copyright (c) 2015 Flávio Silvério. All rights reserved.
//

import Foundation

extension Array {
    
    func randomElement() -> T {
        
        let index = Int(arc4random_uniform(UInt32(self.count)))
        return self[index]
        
    }
}