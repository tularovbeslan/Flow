//
//  TermsPresenter.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

class TermsPresenter: TermsModuleInput, TermsViewOutput, TermsInteractorOutput {

    weak var view: TermsViewInput!
	weak var coordinator: TermsViewCoordinatorOutput!
    var interactor: TermsInteractorInput!

    func viewIsReady() {

    }
	
	func onConformChanged(_ value: Bool) {
		coordinator.onConfirmChanged?(value)
	}
	
	func onAcceptTap() {
		coordinator.onSignIn?()
	}
}
