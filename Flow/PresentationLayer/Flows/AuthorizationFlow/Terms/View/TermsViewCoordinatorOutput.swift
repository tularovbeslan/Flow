//
//  TermsViewCoordinatorOutput.swift
//  Flow
//
//  Created by workmachine on 01.08.2018.
//  Copyright © 2018 Beslan Tularov Ramazanovich. All rights reserved.
//

protocol TermsViewCoordinatorOutput: class {
	
	var confirmed: Bool { get set }
	var onConfirmChanged: ((Bool) -> ())? { get set }
	var onSignIn: (() -> Void)? { get set }
}
