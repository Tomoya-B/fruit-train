//
//  GameScene.swift
//  果物列車
//
//  Created by 数理科学部 on 2016/08/02.
//  Copyright (c) 2016年 __MyCompanyName__. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    let π:CGFloat = 3.1415926535
    
    var x:CGFloat = 0.0
    var y:CGFloat = 0.0
    var deg:CGFloat = 0.0
    
    override func didMoveToView(view: SKView)
    {
        /* Setup your scene here */
        
        self.backgroundColor = UIColor.whiteColor()
        
        let circle = SKShapeNode(circleOfRadius: 15)
        circle.position = CGPointMake(self.size.width/2 + 20 * deg, self.size.height/2 + 20 * deg)
        circle.fillColor = UIColor.redColor()
        
        
        self.addChild(circle)
        deg += π/100
        
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?)
    {
       /* Called when a touch begins */
        
        
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
