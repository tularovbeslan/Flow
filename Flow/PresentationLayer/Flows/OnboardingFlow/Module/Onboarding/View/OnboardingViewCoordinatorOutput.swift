//
//  OnboardingViewCoordinatorOutput.swift
//  Flow
//
//  Created by workmachine on 02.08.2018.
//  Copyright © 2018 Beslan Tularov Ramazanovich. All rights reserved.
//

protocol OnboardingViewCoordinatorOutput: Presentable {
	
	var onNext: (() -> Void)? { get set }
}
