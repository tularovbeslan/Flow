//
//  AuthorizationAuthorizationConfigurator.swift
//  Flow
//
//  Created by Beslan Tularov on 26/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class AuthorizationModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? AuthorizationViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: AuthorizationViewController) {

        let router = AuthorizationRouter()

        let presenter = AuthorizationPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = AuthorizationInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
