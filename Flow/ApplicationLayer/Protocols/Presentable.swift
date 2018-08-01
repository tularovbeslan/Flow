//
//  Presentable.swift
//  Flow
//
//  Created by workmachine on 26.07.2018.
//  Copyright © 2018 Beslan Tularov Ramazanovich. All rights reserved.
//

import UIKit.UIViewController

protocol Presentable: class {
	
	func toPresent() -> UIViewController?
}

extension UIViewController: Presentable {
	
	func toPresent() -> UIViewController? {
		return self
	}
}
