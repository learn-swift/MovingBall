//
//  HomeViewController.swift
//  DrawBall
//
//  Created by Duy Tang on 6/24/16.
//  Copyright © 2016 Duy Tang. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
	
	@IBOutlet weak var ballView: BallView!
	var location = CGPoint(x: 0, y: 0)
	override func viewDidLoad() {
		super.viewDidLoad()
		self.title = "Drawing"
		
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}
	
	
	
	@IBAction func addNewBall(sender: UIButton) {
		let speedX = CGFloat(arc4random_uniform(10) + 1)
		let speedY = CGFloat(arc4random_uniform(10) + 1)
		let ball = BallView(speedX: speedX,speedY: speedY)
		self.view.addSubview(ball)
		ball.move()
	}
	
}
