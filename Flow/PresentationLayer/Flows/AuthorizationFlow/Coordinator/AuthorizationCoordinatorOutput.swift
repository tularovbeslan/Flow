//
//  AuthorizationCoordinatorOutput.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

protocol AuthorizationCoordinatorOutput: class {
	
	var finishFlow: (() -> Void)? { get set }
}
