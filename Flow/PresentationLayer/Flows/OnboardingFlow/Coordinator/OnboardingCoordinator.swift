//
//  OnboardingCoordinator.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

class OnboardingCoordinator: BaseCoordinator, OnboardingCoordinatorOutput {

	// MARK: - OnboardingCoordinatorOutput
	
	var finishFlow: (() -> Void)?
	
	private let factory: OnboardingFlowFactory
	private let router: Router
	
	init(router: Router, factory: OnboardingFlowFactory) {
		
		self.factory = factory
		self.router = router
	}
	
	// MARK: - BaseCoordinator
	
	override func start() {
		showOnboarding()
	}
	
	// MARK: - Flow's controllers
	
	private func showOnboarding() {
		let onboardingOutput = factory.produceOnboardingOutput()
		onboardingOutput.onNext = { [weak self] in
			
			self?.finishFlow?()
		}
		
		router.setRootModule(onboardingOutput, hideBar: true)
	}
}
