//
//  CoordinatorFactory.swift
//  Flow
//
//  Created by workmachine on 26.07.2018.
//  Copyright © 2018 Beslan Tularov Ramazanovich. All rights reserved.
//
import  UIKit.UINavigationController

protocol CoordinatorFactory {
	
	func produceAuthorizationCoordinator(router: Router, flowFactory: AuthorizationFlowFactory) -> Coordinator & AuthorizationCoordinatorOutput
	
	func produceOnboardingCoordinator(router: Router, flowFactory: OnboardingFlowFactory) -> Coordinator & OnboardingCoordinatorOutput
	
	func produceTabbarCoordinator(coordinatorFactory: CoordinatorFactory) -> (configurator: Coordinator, toPresent: Presentable?)
	
	func produceFeedCoordinator(flowFactory: FeedFlowFactory) -> Coordinator
	func produceFeedCoordinator(navigationController: UINavigationController?, flowFactory: FeedFlowFactory) -> Coordinator
	func produceFeedCoordinator(router: Router, flowFactory: FeedFlowFactory) -> Coordinator & FeedCoordinatorOutput
}
