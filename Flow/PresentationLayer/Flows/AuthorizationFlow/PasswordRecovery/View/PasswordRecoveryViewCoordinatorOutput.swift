//
//  PasswordRecoveryViewCoordinatorOutput.swift
//  Flow
//
//  Created by workmachine on 01.08.2018.
//  Copyright © 2018 Beslan Tularov Ramazanovich. All rights reserved.
//

protocol PasswordRecoveryViewCoordinatorOutput: class {
	
	var onSend: (() -> Void)? { get set }
}
