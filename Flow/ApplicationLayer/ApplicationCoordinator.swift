//
//  ApplicationCoordinator.swift
//  Flow
//
//  Created by workmachine on 01.08.2018.
//  Copyright © 2018 Beslan Tularov Ramazanovich. All rights reserved.
//

import Foundation

final class ApplicationCoordinator: BaseCoordinator {
	
	private let flowFactory: FlowFactoryImp
	private let coordinatorFactory: CoordinatorFactory
	private let router: Router
	
	init(router: Router, coordinatorFactory: CoordinatorFactory, flowFactory: FlowFactoryImp) {
		self.router = router
		self.coordinatorFactory = coordinatorFactory
		self.flowFactory = flowFactory
	}
	
	override func start(with option: DeepLinkOption?) {
		
	}
	
	override func start() {
		runAuthFlow()
	}
	
	private func runAuthFlow() {
		let coordinator = coordinatorFactory.produceAuthorizationCoordinator(router: router, flowFactory: flowFactory)
		coordinator.finishFlow = { [weak self, weak coordinator] in
			self?.start()
			self?.removeDependency(coordinator)
		}
	
		addDependency(coordinator)
		coordinator.start()
	}
	
	private func runOnboardingFlow() {
		
	}
	
	private func runMainFlow() {
		
	}
}
