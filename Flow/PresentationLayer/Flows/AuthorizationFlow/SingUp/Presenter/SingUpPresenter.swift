//
//  SingUpPresenter.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

class SingUpPresenter: SingUpModuleInput, SingUpViewOutput, SingUpInteractorOutput {

    weak var view: SingUpViewInput!
	weak var coordinator: SingUpViewCoordinatorOutput!
    var interactor: SingUpInteractorInput!

    func viewIsReady() {

    }
	
	func onSingInTap() {
		coordinator.onSignIn?()
	}
	
	func onSingUpTap() {
		coordinator.onSignUp?()
	}
	
	func onTermsTap() {
		coordinator.onTerms?()
	}
}
