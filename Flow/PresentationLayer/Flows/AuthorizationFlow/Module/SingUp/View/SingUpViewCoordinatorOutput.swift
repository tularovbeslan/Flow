//
//  SingUpViewCoordinatorOutput.swift
//  Flow
//
//  Created by workmachine on 01.08.2018.
//  Copyright © 2018 Beslan Tularov Ramazanovich. All rights reserved.
//

protocol SingUpViewCoordinatorOutput: Presentable {

	var onSignIn: (() -> Void)? { get set }
	var onSignUp: (() -> Void)? { get set }
	var onTerms: (() -> Void)? { get set }
	
	var confirmed: Bool { get set }
	func conformTermsAgreement(_ agree: Bool)
}
