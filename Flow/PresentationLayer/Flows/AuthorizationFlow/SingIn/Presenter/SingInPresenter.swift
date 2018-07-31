//
//  SingInPresenter.swift
//  Flow
//
//  Created by Beslan Tularov on 27/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

final class SingInPresenter: SingInModuleInput, SingInViewOutput, SingInInteractorOutput {

	// MARK: - Properties
	
    weak var view: SingInViewInput!
    var interactor: SingInInteractorInput!
	
	// MARK: - SingInViewOutput
	
    func viewIsReady() {

    }
}
