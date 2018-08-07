//
//  TabbarCoordinator.swift
//  Flow
//
//  Created by workmachine on 07.08.2018.
//  Copyright © 2018 Beslan Tularov Ramazanovich. All rights reserved.
//

import UIKit

class TabbarCoordinator: BaseCoordinator {
	
	private let tabbarOutput: FlowTabbarCoordinatorOutput
	private let coordinatorFactory: CoordinatorFactory
	
	init(tabbarOutput: FlowTabbarCoordinatorOutput, coordinatorFactory: CoordinatorFactory) {
		self.tabbarOutput = tabbarOutput
		self.coordinatorFactory = coordinatorFactory
	}
	
	override func start() {

	}
}
