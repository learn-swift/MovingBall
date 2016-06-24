//
//  BallView.swift
//  DrawBall
//
//  Created by Duy Tang on 6/24/16.
//  Copyright © 2016 Duy Tang. All rights reserved.
//

import UIKit

@IBDesignable
class BallView: UIView {
	var speedX: CGFloat = 5
	var speedY: CGFloat = 5
	
	@IBInspectable var ballColor = UIColor.grayColor() {
		didSet {
			setNeedsDisplay()
		}
	}
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		self.backgroundColor = UIColor.clearColor()
	}
	
	init(speedX: CGFloat, speedY: CGFloat) {
		self.speedX = speedX
		self.speedY = speedY
		super.init(frame: CGRectMake(0, 0, 20, 20))
		self.backgroundColor = UIColor.clearColor()
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override func drawRect(rect: CGRect) {
		let red = Int(arc4random_uniform(255))
		let green = Int(arc4random_uniform(255))
		let blue = Int(arc4random_uniform(255))
		let path = UIBezierPath(ovalInRect: rect)
		UIColor(red: red, green: green, blue: blue).setFill()
		path.fill()
	}
	
	func move() {
		dispatch_async(dispatch_get_global_queue(, <#T##flags: UInt##UInt#>), <#T##block: dispatch_block_t##dispatch_block_t##() -> Void#>)
		let timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(updatePosition), userInfo: nil, repeats: true)
		timer.fire()
	}
	
	func updatePosition() {
		checkTouch()
		
		self.frame.origin.x = self.frame.origin.x + CGFloat(speedX)
		self.frame.origin.y = self.frame.origin.y + CGFloat(speedY)
	}
	
	func checkTouch() {
		let currentX = self.frame.origin.x
		let currentY = self.frame.origin.y
		
		if currentX < 0 {
			speedX = -speedX
			if currentY < 0 {
				speedY = -speedY
			}
		} else if currentX >= screenWidth {
			speedX = -speedX
			if currentY > screenHeigh {
				speedY = -speedY
			}
		} else {
			if currentY >= screenHeigh || currentY < 0 {
				speedY = -speedY
			}
		}
		
	}
}
