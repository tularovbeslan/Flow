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
	
	override func viewDidLoad() {
		super.viewDidLoad()
		startRootFlows()
	}
	
	func startRootFlows() {
		
		if let controller = viewControllers?[0] as? UINavigationController {
			onFeedFlow?(controller)
		}
		
		if let controller = viewControllers?[1] as? UINavigationController {
			onProfileFlow?(controller)
		}
	}
	
	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		setItemsImage()
		removeTabbarItemsText()
	}
	
	private func removeTabbarItemsText() {
		
		tabBar.items?.forEach {
			
			$0.title = ""
			$0.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
		}
	}
	
	private func setItemsImage() {
		
		tabBar.items?.forEach({ (item) in
			item.image = #imageLiteral(resourceName: "oval")
			item.selectedImage = #imageLiteral(resourceName: "selectedOval")
		})
	}
}
