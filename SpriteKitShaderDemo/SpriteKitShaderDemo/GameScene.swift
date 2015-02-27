//
//  GameScene.swift
//  SpriteKitShaderDemo
//
//  Created by dorapro on 2015/02/24.
//  Copyright (c) 2015年 dorapro. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        
        let bgNode = SKSpriteNode(imageNamed:"bg")
        bgNode.size = CGSize(width: 311, height: 407)
        bgNode.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))

        let shader = SKShader(fileNamed: "demo.fsh")
        bgNode.shader = shader;
        
        self.addChild(bgNode)
    }
}
