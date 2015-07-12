//
//  StartGameScene.swift
//  platformer
//
//  Created by Flávio Silvério on 12/07/15.
//  Copyright (c) 2015 Flávio Silvério. All rights reserved.
//

import UIKit
import SpriteKit

class StartGameScene: SKScene {
    
    override func didMoveToView(view: SKView) {
        
        let startGameButton = SKSpriteNode(imageNamed: "images/newgamebtn")
        startGameButton.position = CGPointMake(size.width/2,size.height/2 - 100)
        startGameButton.name = "startgame"
        addChild(startGameButton)
        
        backgroundColor = SKColor.blackColor()
        let starField = SKEmitterNode(fileNamed: "StarField")
        starField.position = CGPointMake(size.width/2,size.height/2)
        starField.zPosition = -1000
        addChild(starField)
        
        let invaderText = PulsatingText(fontNamed: "ChalkDuster")
        invaderText.setTextFontSizeAndPulsate("INVADERZ", theFontSize: 50)
        invaderText.position = CGPointMake(size.width/2,size.height/2 + 200)
        addChild(invaderText)
        
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        let touch = touches.first as! UITouch
        let touchLocation = touch.locationInNode(self)
        let touchedNode = self.nodeAtPoint(touchLocation)
        
        if(touchedNode.name == "startgame"){
            
            let gameOverScene = GameScene(size: size)
            gameOverScene.scaleMode = scaleMode
            let transitionType = SKTransition.crossFadeWithDuration(1.0)
            view?.presentScene(gameOverScene,transition: transitionType)
            
        }
    }

}
