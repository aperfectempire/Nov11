//
//  View.swift
//  Nov11
//
//  Created by edwin vazquez on 1/27/15.
//  Copyright (c) 2015 A Perfect Empire. All rights reserved.
//

import UIKit

class View: UIView {

	let littleView: LittleView;

	required init(coder aDecoder: NSCoder) {
		let screen: UIScreen = UIScreen.mainScreen();
		let applicationFrame: CGRect = screen.applicationFrame;
		let f: CGRect = CGRectMake(applicationFrame.origin.x, applicationFrame.origin.y, 80, 40);
		littleView = LittleView(frame: f);	//call init method of class LittleView
		super.init(coder: aDecoder)
		backgroundColor = UIColor.whiteColor();
		addSubview(littleView);
		
	}

override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
		littleView.backgroundColor = UIColor.greenColor();
	}

	override func touchesMoved(touches: NSSet, withEvent event: UIEvent) {
		let touch: UITouch = touches.anyObject() as UITouch;
		let point: CGPoint = touch.locationInView(self);
		littleView.center = point;	//Move the littleView to a new location.
	}

	override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
		littleView.backgroundColor = UIColor.yellowColor();
	}

	override func touchesCancelled(touches: NSSet!, withEvent event: UIEvent!) {
	}
	
	

	/*
	// Only override drawRect: if you perform custom drawing.
	// An empty implementation adversely affects performance during animation.
	override func drawRect(rect: CGRect)
	{
		// Drawing code
	}
	*/

}