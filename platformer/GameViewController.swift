//
//  GameViewController.swift
//  platformer
//
//  Created by Flávio Silvério on 12/07/15.
//  Copyright (c) 2015 Flávio Silvério. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        let scene = StartGameScene(size: view.bounds.size)
        let skView = view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .ResizeFill
        skView.presentScene(scene)
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }


}
