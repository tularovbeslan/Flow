//
//  FlowNavigationController.swift
//  Flow
//
//  Created by workmachine on 01.08.2018.
//  Copyright © 2018 Beslan Tularov Ramazanovich. All rights reserved.
//

import UIKit

class FlowNavigationController: UINavigationController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		navigationBar.isTranslucent = false
		navigationBar.shadowImage = UIImage()
	}
	
	override func popViewController(animated: Bool) -> UIViewController? {
		if #available(iOS 10.0, *) {
			let generator = UIImpactFeedbackGenerator(style: .light)
			generator.impactOccurred()
		}
		let popViewController = super.popViewController(animated: animated)
		return popViewController
	}
}
