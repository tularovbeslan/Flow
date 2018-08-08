//
//  FlowTabbarController.swift
//  Flow
//
//  Created by workmachine on 07.08.2018.
//  Copyright © 2018 Beslan Tularov Ramazanovich. All rights reserved.
//

import UIKit

class FlowTabbarController: UITabBarController , UITabBarControllerDelegate, FlowTabbarCoordinatorOutput {
	
	var onFeedFlow: ((UINavigationController) -> ())?
	var onProfileFlow: ((UINavigationController) -> ())?
	var onViewDidLoad: ((UINavigationController) -> ())?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		appearance()
		delegate = self
		
		if let controller = customizableViewControllers?.first as? UINavigationController {
			onViewDidLoad?(controller)
		}
	}
	
	func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
		
		guard let controller = viewControllers?[selectedIndex] as? UINavigationController else { return }
		
		switch selectedIndex {
		case 0: onFeedFlow?(controller)
		case 1: onProfileFlow?(controller)
		default: break
		}
	}
	
	// MARK: - Appearance
	
	private func appearance() {
		
		
	}
}
