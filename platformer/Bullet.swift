//
//  Bullet.swift
//  platformer
//
//  Created by Flávio Silvério on 12/07/15.
//  Copyright (c) 2015 Flávio Silvério. All rights reserved.
//

import UIKit
import SpriteKit

class Bullet: SKSpriteNode {
    
    
    init(imageName: String, bulletSound: String?) {
        let texture = SKTexture(imageNamed: imageName)
        super.init(texture: texture, color: SKColor.clearColor(), size: texture.size())
        if(bulletSound != nil){
            runAction(SKAction.playSoundFileNamed(bulletSound!, waitForCompletion: false))
        }
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
