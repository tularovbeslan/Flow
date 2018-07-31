//
//  UIViewControllerExtension.swift
//  Flow
//
//  Created by workmachine on 31.07.2018.
//  Copyright © 2018 Beslan Tularov Ramazanovich. All rights reserved.
//

import UIKit.UIViewController

extension UIViewController {
	
	private class func instantiateControllerInStoryboard<T: UIViewController>(_ storyboard: UIStoryboard, identifier: String) -> T {
		return storyboard.instantiateViewController(withIdentifier: identifier) as! T
	}
	
	class func fromStoryboard(_ storyboard: UIStoryboard, identifier: String) -> Self {
		return fromStoryboard(storyboard, identifier: identifier)
	}
	
	class func fromStoryboard(_ storyboard: UIStoryboard) -> Self {
		return fromStoryboard(storyboard, identifier: String(describing: self.self))
	}
	
	class func fromStoryboard(_ storyboard: Storyboards) -> Self {
		return fromStoryboard(UIStoryboard(name: storyboard.rawValue, bundle: nil), identifier: String(describing: self.self))
	}
}
