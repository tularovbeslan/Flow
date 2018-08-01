//
//  PasswordRecoveryPresenter.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

class PasswordRecoveryPresenter: PasswordRecoveryModuleInput, PasswordRecoveryViewOutput, PasswordRecoveryInteractorOutput {

    weak var view: PasswordRecoveryViewInput!
	weak var coordinator: PasswordRecoveryViewCoordinatorOutput!
    var interactor: PasswordRecoveryInteractorInput!

	func viewDidLoad() {
		view.setupInitialState()
	}
	
	func onSendTap() {
		coordinator.onSend?()
	}
}
