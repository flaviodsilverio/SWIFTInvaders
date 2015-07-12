//
//  LevelCompleteScene.swift
//  platformer
//
//  Created by Flávio Silvério on 12/07/15.
//  Copyright (c) 2015 Flávio Silvério. All rights reserved.
//

import Foundation
import SpriteKit

class LevelCompleteScene:SKScene{
    
    override func didMoveToView(view: SKView) {
        self.backgroundColor = SKColor.blackColor()
        let startGameButton = SKSpriteNode(imageNamed: "nextlevelbtn")
        startGameButton.position = CGPointMake(size.width/2,size.height/2 - 100)
        startGameButton.name = "nextlevel"
        addChild(startGameButton)
        
        
        self.backgroundColor = SKColor.blackColor()
        let invaderText = PulsatingText(fontNamed: "ChalkDuster")
        invaderText.setTextFontSizeAndPulsate("LEVEL COMPLETE", theFontSize: 50)
        invaderText.position = CGPointMake(size.width/2,size.height/2 + 200)
        addChild(invaderText)
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        let touch = touches.first as! UITouch
        let touchLocation = touch.locationInNode(self)
        let touchedNode = self.nodeAtPoint(touchLocation)
        if(touchedNode.name == "nextlevel"){
            let gameOverScene = GameScene(size: size)
            gameOverScene.scaleMode = scaleMode
            let transitionType = SKTransition.flipHorizontalWithDuration(0.5)
            view?.presentScene(gameOverScene,transition: transitionType)            }
    }
}