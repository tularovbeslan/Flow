//
//  AuthorizationFlowFactory.swift
//  Flow
//
//  Created by workmachine on 31.07.2018.
//  Copyright © 2018 Beslan Tularov Ramazanovich. All rights reserved.
//

import Foundation

protocol AuthorizationFlowFactory {
	func produceSingInOutput() -> SingInViewInput
	func produceSignUpOutput() -> SingUpViewInput
	func producePasswordRecoveryOutput() -> PasswordRecoveryViewInput
	func produceTermsOutput() -> TermsViewInput
}
