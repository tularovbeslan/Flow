//
//  SingInViewCoordinatorOutput.swift
//  Flow
//
//  Created by workmachine on 01.08.2018.
//  Copyright © 2018 Beslan Tularov Ramazanovich. All rights reserved.
//

protocol SingInViewCoordinatorOutput: Presentable {
	
	var onSignIn: (() -> Void)? { get set }
	var onSignUp: (() -> Void)? { get set }
	var onPasswordRecovery: (() -> Void)? { get set }
}
