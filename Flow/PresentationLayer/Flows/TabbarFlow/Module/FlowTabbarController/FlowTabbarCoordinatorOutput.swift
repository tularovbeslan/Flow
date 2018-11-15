//
//  FlowTabbarCoordinatorOutput.swift
//  Flow
//
//  Created by workmachine on 07.08.2018.
//  Copyright © 2018 Beslan Tularov Ramazanovich. All rights reserved.
//

import UIKit.UINavigationController

protocol FlowTabbarCoordinatorOutput: class {
	
	var onFeedFlow: ((UINavigationController) -> ())? { get set }
	var onProfileFlow: ((UINavigationController) -> ())? { get set }
}
