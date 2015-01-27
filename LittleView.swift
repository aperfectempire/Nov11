//
//  LittleView.swift
//  Nov11
//
//  Created by edwin vazquez on 1/27/15.
//  Copyright (c) 2015 A Perfect Empire. All rights reserved.
//

import UIKit

class LittleView: UIView {

	//Called by class View.

	override init(frame: CGRect) {
		super.init(frame: frame)
		// Initialization code
		self.backgroundColor = UIColor.yellowColor();
	}

	//Never called, but required anyway.

	required init(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
	}

	// Only override drawRect: if you perform custom drawing.
	// An empty implementation adversely affects performance during animation.
	override func drawRect(rect: CGRect)
	{
		// Drawing code
		let font: UIFont = UIFont.systemFontOfSize(bounds.size.height / 2);
		let attributes: [NSObject: AnyObject] = [NSFontAttributeName: font]; //a dictionary
		"Hello!".drawAtPoint(CGPointZero, withAttributes: attributes);
	}

}
