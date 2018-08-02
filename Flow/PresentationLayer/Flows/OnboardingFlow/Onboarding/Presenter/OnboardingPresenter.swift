//
//  OnboardingPresenter.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

class OnboardingPresenter: OnboardingModuleInput, OnboardingViewOutput, OnboardingInteractorOutput {

    weak var view: OnboardingViewInput!
	weak var coordinator: OnboardingViewCoordinatorOutput!
    var interactor: OnboardingInteractorInput!

	func viewDidLoad() {
		view.setupInitialState()
	}
	
	func onNextTap() {
		coordinator.onNext?()
	}
}
