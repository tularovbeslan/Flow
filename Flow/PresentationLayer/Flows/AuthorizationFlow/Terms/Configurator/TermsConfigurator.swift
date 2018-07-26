//
//  TermsTermsConfigurator.swift
//  Flow
//
//  Created by Beslan Tularov on 26/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class TermsModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? TermsViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: TermsViewController) {

        let router = TermsRouter()

        let presenter = TermsPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = TermsInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
