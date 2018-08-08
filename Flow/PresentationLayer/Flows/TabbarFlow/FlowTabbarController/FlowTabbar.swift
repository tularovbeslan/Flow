//
//  FlowTabbar.swift
//  Flow
//
//  Created by workmachine on 08.08.2018.
//  Copyright © 2018 Beslan Tularov Ramazanovich. All rights reserved.
//

import UIKit

class FlowTabbar: UITabBar {

	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		
		isTranslucent	= false
		shadowImage		= UIImage()
	}
}
