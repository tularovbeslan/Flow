//
//  CoordinatorFactoryImp.swift
//  Flow
//
//  Created by workmachine on 31.07.2018.
//  Copyright © 2018 Beslan Tularov Ramazanovich. All rights reserved.
//

import UIKit.UINavigationController

class CoordinatorFactoryImp: CoordinatorFactory {
	
	func produceAuthorizationCoordinator(router: Router, flowFactory: AuthorizationFlowFactory) -> Coordinator & AuthorizationCoordinatorOutput {
		
		let coordinator = AuthorizationCoordinator(router: router, factory: flowFactory)
		return coordinator
	}
	
	func produceOnboardingCoordinator(router: Router, flowFactory: OnboardingFlowFactory) -> Coordinator & OnboardingCoordinatorOutput {
		
		let coordinator = OnboardingCoordinator(router: router, factory: flowFactory)
		return coordinator
	}
	
	func produceTabbarCoordinator(coordinatorFactory: CoordinatorFactory) -> (configurator: Coordinator, toPresent: Presentable?) {
		
		let controller = FlowTabbarController.fromStoryboard(.TabbarFlow)
		let coordinator = TabbarCoordinator(tabbarOutput: controller, coordinatorFactory: coordinatorFactory)
		return (coordinator, controller)
	}
	
	func produceFeedCoordinator(flowFactory: FeedFlowFactory) -> Coordinator {
		
		let coordinator = produceFeedCoordinator(navigationController: nil, flowFactory: flowFactory)
		return coordinator
	}
	
	func produceFeedCoordinator(navigationController: UINavigationController?, flowFactory: FeedFlowFactory) -> Coordinator {
		
		let coordinator = produceFeedCoordinator(router: router(navigationController), flowFactory: flowFactory)
		return coordinator
	}
	
	func produceFeedCoordinator(router: Router, flowFactory: FeedFlowFactory) -> Coordinator & FeedCoordinatorOutput {
		
		let coordinator = FeedCoordinator(router: router, factory: flowFactory)
		return coordinator
	}
	
	private func router(_ controller: UINavigationController?) -> Router {
		
		let router = RouterImp(rootController: navigationController(controller))
		return router
	}
	
	private func navigationController(_ controller: UINavigationController?) -> UINavigationController {
		
		if let navigationController = controller {
			return navigationController
		} else {
			return FlowNavigationController.fromStoryboard(.FlowNavigationController)
		}
	}
}
