//
//  ProfileCoordinator.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

class ProfileCoordinator: BaseCoordinator, ProfileCoordinatorOutput {

	private let factory: ProfileFlowFactory
	private let router: Router
	
	init(router: Router, factory: ProfileFlowFactory) {
		
		self.factory = factory
		self.router = router
	}
	
	// MARK: - BaseCoordinator
	
	override func start() {
		showProfile()
	}
	
	private func showProfile() {
		
		let profileOutput = factory.produceProfileOutput()
		router.setRootModule(profileOutput, hideBar: true)
	}
}
