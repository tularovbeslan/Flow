//
//  LoginLoginConfigurator.swift
//  Flow
//
//  Created by Beslan Tularov on 26/07/2018.
//  Copyright © 2018 Flow. All rights reserved.
//

import UIKit

class LoginModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? LoginViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: LoginViewController) {

        let router = LoginRouter()

        let presenter = LoginPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = LoginInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
