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
	private weak var singUpOutput: SingUpViewCoordinatorOutput?
	
	init(router: Router, factory: AuthorizationFlowFactory) {
		
		self.factory = factory
		self.router = router
	}
	
	// MARK: - BaseCoordinator
	
	override func start() {
		showSingIn()
	}
	
	// MARK: - Flow's controllers
	
	private func showSingIn() {
		
		let singInOutput = factory.produceSingInOutput()
		singInOutput.onSignIn = { [weak self] in
			self?.finishFlow?()
		}
		
		singInOutput.onSignUp = { [weak self] in
			self?.showSingUp()
		}
		
		singInOutput.onPasswordRecovery = { [weak self] in
			self?.showPasswordRecovery()
		}
		
		router.setRootModule(singInOutput, hideBar: true)
	}
	
	private func showSingUp() {
		
		singUpOutput = factory.produceSignUpOutput()
		singUpOutput?.onSignUp = { [weak self] in
			self?.finishFlow?()
		}
		
		singUpOutput?.onTerms = { [weak self] in
			self?.showTerms()
		}
		
		singUpOutput?.onSignIn = { [weak self] in
			self?.router.popModule()
		}
		
		router.push(singUpOutput)
	}
	
	private func showPasswordRecovery() {
		
		let passwordRecoveryOutput = factory.producePasswordRecoveryOutput()
		passwordRecoveryOutput.onSend = { [weak self] in
			self?.router.dismissModule()
		}
		
		router.present(passwordRecoveryOutput)
	}
	
	private func showTerms() {
		
		let termsOutput = factory.produceTermsOutput()
		termsOutput.onAccept = { [weak self] in
			self?.router.popModule()
		}
				
		router.push(termsOutput)
	}
}
