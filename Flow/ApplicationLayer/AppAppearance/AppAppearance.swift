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
		case Filed
		case Image
		
		var radius: CGFloat {
			switch self {
			case .Button: return 25
			case .Filed: return 20
			case .Image: return 30
			}
		}
			
		var color: UIColor {
			switch self {
				case let .Button(tag) :
					switch tag {
						case 0:
							return UIColor(red: 229/255, green: 98/255, blue: 92/255, alpha: 1)
						case 1:
							return UIColor(red: 249/255, green: 191/255, blue: 118/255, alpha: 1)
						case 2:
							return UIColor(red: 97/255, green: 83/255, blue: 117/255, alpha: 1)
						default: return UIColor.black
					}
				case .Filed: return UIColor(red: 241/255, green: 241/255, blue: 241/255, alpha: 1)
				case .Image: return UIColor(red: 241/255, green: 241/255, blue: 241/255, alpha: 1)
			}
		}
	}
}

