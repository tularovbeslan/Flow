//
//  CoordinatorFactory.swift
//  Flow
//
//  Created by workmachine on 26.07.2018.
//  Copyright © 2018 Beslan Tularov Ramazanovich. All rights reserved.
//

protocol CoordinatorFactory {
	
	func produceAuthorizationCoordinator(router: Router, flowFactory: AuthorizationFlowFactory) -> Coordinator & AuthorizationCoordinatorOutput
	
	func produceOnboardingCoordinator(router: Router, flowFactory: OnboardingFlowFactory) -> Coordinator & OnboardingCoordinatorOutput

}
