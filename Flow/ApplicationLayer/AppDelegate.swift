//
//  AppDelegate.swift
//  Flow
//
//  Created by workmachine on 25.07.2018.
//  Copyright © 2018 Beslan Tularov Ramazanovich. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?
	var rootController: UINavigationController {
		return self.window!.rootViewController as! UINavigationController
	}
	private lazy var applicationCoordinator: Coordinator = self.produceApplicationCoordinator()

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		applicationCoordinator.start()
		return true
	}
	
	private func produceApplicationCoordinator() -> Coordinator {
		let router = RouterImp(rootController: self.rootController)
		let coordinatorFactory = CoordinatorFactoryImp()
		let flowCoordinator = FlowFactoryImp()
		
		return ApplicationCoordinator(router: router,
									  coordinatorFactory: coordinatorFactory,
									  flowFactory: flowCoordinator)
	}
}

