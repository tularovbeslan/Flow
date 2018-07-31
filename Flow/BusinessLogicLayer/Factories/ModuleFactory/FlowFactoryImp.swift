//
//  FlowFactoryImp.swift
//  Flow
//
//  Created by workmachine on 31.07.2018.
//  Copyright © 2018 Beslan Tularov Ramazanovich. All rights reserved.
//

import Foundation

class FlowFactoryImp: AuthorizationFlowFactory {
	
	func produceSingInOutput() -> SingInViewInput {
		return SingInViewController.fromStoryboard(.AuthorizationFlow)
	}
	
	func produceSignUpOutput() -> SingUpViewInput {
		return SingUpViewController.fromStoryboard(.AuthorizationFlow)
	}
	
	func producePasswordRecoveryOutput() -> PasswordRecoveryViewInput {
		return PasswordRecoveryViewController.fromStoryboard(.AuthorizationFlow)
	}
	
	func produceTermsOutput() -> TermsViewInput {
		return TermsViewController.fromStoryboard(.AuthorizationFlow)
	}
}
