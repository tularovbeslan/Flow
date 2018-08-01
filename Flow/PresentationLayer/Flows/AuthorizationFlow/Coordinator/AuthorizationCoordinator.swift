//
//  AuthorizationCoordinator.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

class AuthorizationCoordinator: BaseCoordinator , AuthorizationCoordinatorOutput {
	
	// MARK: - AuthorizationCoordinatorOutput
	
	var finishFlow: (() -> Void)?
	
	private let factory: AuthorizationFlowFactory
	private let router: Router
	private weak var singUpInput: SingUpViewInput?
	
	init(router: Router, factory: AuthorizationFlowFactory) {
		self.factory = factory
		self.router = router
	}
	
	// MARK: - BaseCoordinator
	
	override func start() {

	}
	
	// MARK: - Flow's controllers
	
	private func showSingIn() {
		
	}
	
	private func showSingUp() {
		
	}
	
	private func showPasswordRecovery() {
		
	}
	
	private func showTerms() {
		
	}
}
