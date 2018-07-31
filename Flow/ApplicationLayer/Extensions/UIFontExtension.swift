//
//  UIFontExtension.swift
//  Flow
//
//  Created by workmachine on 31.07.2018.
//  Copyright © 2018 Beslan Tularov Ramazanovich. All rights reserved.
//

import UIKit.UIFont

extension UIFont {
	static func avertaCY(style: FontStyle, size: CGFloat) -> UIFont {
		let fontStyle = style.rawValue
		let font = UIFont(name: "AvertaCY-\(fontStyle)", size: size) ?? UIFont.systemFont(ofSize: size)
		return font
	}
	
	enum FontStyle: String {
		case regular
		case semibold
		case bold
	}
}
