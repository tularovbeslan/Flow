//
//  TermsTermsPresenter.swift
//  Flow
//
//  Created by Beslan Tularov on 26/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

class TermsPresenter: TermsModuleInput, TermsViewOutput, TermsInteractorOutput {

    weak var view: TermsViewInput!
    var interactor: TermsInteractorInput!
    var router: TermsRouterInput!

    func viewIsReady() {

    }
}
