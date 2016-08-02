//
//  GameScene.swift
//  果物列車
//
//  Created by 数理科学部 on 2016/08/02.
//  Copyright (c) 2016年 __MyCompanyName__. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView)
    {
        /* Setup your scene here */
        
        self.backgroundColor = UIColor.whiteColor()
        
        let oval = CAShapeLayer()
        oval.strokeColor = UIColor.blueColor().CGColor
        oval.fillColor = UIColor.whiteColor().CGColor
        oval.lineWidth = 3.0
        oval.lineDashPattern = [2,3]
        
        oval.path = UIBezierPath(ovalInRect: CGRect(x: view.bounds.size.width/2, y: view.bounds.size.height/2, width: 100.0, height: 100.0)).CGPath
        
        view.layer.addSublayer(oval)
        
        let strokeStartAnimation = CABasicAnimation(keyPath: "strokeStart")
        strokeStartAnimation.fromValue = -0.5
        strokeStartAnimation.toValue = 1.0
 
        let strokeEndAnimation = CABasicAnimation(keyPath: "strokeEnd")
        strokeEndAnimation.fromValue = 0.0
        strokeEndAnimation.toValue = 1.0
 
        let strokeAnimationGroup = CAAnimationGroup()
        strokeAnimationGroup.duration = 1.5
        strokeAnimationGroup.repeatDuration = CFTimeInterval.infinity
        strokeAnimationGroup.animations = [strokeStartAnimation,strokeEndAnimation]
        oval.addAnimation(strokeAnimationGroup, forKey: nil)
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?)
    {
       /* Called when a touch begins */
        
        
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
