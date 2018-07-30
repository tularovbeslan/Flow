//
//  AppAppearance.swift
//  Flow
//
//  Created by workmachine on 27.07.2018.
//  Copyright © 2018 Beslan Tularov Ramazanovich. All rights reserved.
//

import UIKit

class AppAppearance {
	enum UI {
		case Button(tag: Int)
		case Label(tag: Int)
		case Filed
		case Image
		
		var radius: CGFloat {
			switch self {
			case .Button: return 25
			case .Label: return 5
			case .Filed: return 20
			case .Image: return 30
			}
		}
			
		var color: UIColor {
			switch self {
			case let .Button(tag) :
				switch tag {
				case 0: return .lightRed
				case 1: return .lightOrange
				case 2: return .smoothPurple
				default: return UIColor.black
				}
				
			case let .Label(tag):
				switch tag {
				case 0: return .smoothPurple
				case 1: return .transparentPurple
				case 2: return .smoothGray
				case 3: return .lightRed
				case 4: return .lightOrange
				case 5: return .lightRed
				case 6: return .transparentRed
				default: return UIColor.black
				}
			case .Filed, .Image: return .smoothGray
			}
		}
	}
}

